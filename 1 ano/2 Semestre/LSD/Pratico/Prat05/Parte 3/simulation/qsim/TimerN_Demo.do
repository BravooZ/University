onerror {exit -code 1}
vlib work
vcom -work work TimerN_Demo.vho
vcom -work work TimerN.vwf.vht
vsim -voptargs="+acc" -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.TimerN_vhd_vec_tst
vcd file -direction TimerN_Demo.msim.vcd
vcd add -internal TimerN_vhd_vec_tst/*
vcd add -internal TimerN_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f





