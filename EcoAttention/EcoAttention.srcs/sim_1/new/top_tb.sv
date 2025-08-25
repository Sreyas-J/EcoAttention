`timescale 1ns/1ps

module tb_top;

    // Parameters
    localparam DATA_WIDTH = 32;
    localparam Br = 4; // Q rows
    localparam Bc = 4; // K/V rows
    localparam D  = 64; // embedding dim (now 64)

    // Clock/Reset
    logic clk;
    logic reset;

    // DUT inputs/outputs: wide buses carrying D values (packed)
    logic [DATA_WIDTH*D-1:0] Qdina, Kdina, Vdina;
    logic done;

    // Instantiate DUT (assumes top's port widths match these wide buses)
    top #(
        .DATA_WIDTH(DATA_WIDTH),
        .Br(Br),
        .Bc(Bc),
        .D(D)
    ) dut (
        .clk(clk),
        .reset(reset),
        .Qdina(Qdina),
        .Kdina(Kdina),
        .Vdina(Vdina),
        .done(done)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Matrices (Br x D and Bc x D)
    shortreal Qmat [0:Br-1][0:D-1];
    shortreal Kmat [0:Bc-1][0:D-1];
    shortreal Vmat [0:Bc-1][0:D-1];

    // temporary packed vectors (one row worth of D elements, each DATA_WIDTH bits)
    logic [DATA_WIDTH*D-1:0] q_row_packed, k_row_packed, v_row_packed;

    initial begin
        clk = 0;
        reset = 1;
        Qdina = '0;
        Kdina = '0;
        Vdina = '0;

        // --- Fill matrices with an arbitrary deterministic pattern ---
        // Q: base 1.0 + row index + column_index * 0.001
        // K: base 10.0 + row index + column_index * 0.001
        // V: base 20.0 + row index + column_index * 0.001
        for (int i = 0; i < Br; i++) begin
            for (int j = 0; j < D; j++) begin
                Qmat[i][j] = 1.0 + real'(i) + real'(j) * 0.001;
            end
        end

        for (int i = 0; i < Bc; i++) begin
            for (int j = 0; j < D; j++) begin
                Kmat[i][j] = 10.0 + real'(i) + real'(j) * 0.001;
                Vmat[i][j] = 20.0 + real'(i) + real'(j) * 0.001;
            end
        end
        // -------------------------------------------------------------

        // Release reset
        repeat (2) @(posedge clk);
        reset = 0;

        // Row-major parallel load: pack D elements into one wide bus and write once per row
        for (int i = 0; i < Br; i++) begin
            // clear packed rows
            q_row_packed = '0;
            k_row_packed = '0;
            v_row_packed = '0;

            // pack Q row
            for (int j = 0; j < D; j++) begin
                q_row_packed[j*DATA_WIDTH +: DATA_WIDTH] = $shortrealtobits(Qmat[i][j]);
            end

            // pack K and V row if within Bc, else leave zero
            if (i < Bc) begin
                for (int j = 0; j < D; j++) begin
                    k_row_packed[j*DATA_WIDTH +: DATA_WIDTH] = $shortrealtobits(Kmat[i][j]);
                    v_row_packed[j*DATA_WIDTH +: DATA_WIDTH] = $shortrealtobits(Vmat[i][j]);
                end
            end

            // Drive the DUT wide inputs in one cycle (D values concatenated)
            Qdina = q_row_packed;
            Kdina = k_row_packed;
            Vdina = v_row_packed;

            @(posedge clk);
        end

        // Optionally clear inputs or hold them low after sending
        Qdina = '0;
        Kdina = '0;
        Vdina = '0;

        wait (done);
        $stop;
    end

endmodule
