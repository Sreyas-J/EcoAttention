transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+MUL  -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MUL xil_defaultlib.glbl

do {MUL.udo}

run 1000ns

endsim

quit -force
