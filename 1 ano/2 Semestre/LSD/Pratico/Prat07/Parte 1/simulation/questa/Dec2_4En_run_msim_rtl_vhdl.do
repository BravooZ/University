transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/tiago/Documents/University/1 ano/2 Semestre/LSD/Pratico/Prat07/Parte 1/Dec2_4En.vhd}

