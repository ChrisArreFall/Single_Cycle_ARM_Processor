transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/tb_ARM_RAM_INS.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/xor_A.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/sumador.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/right_shift_logic.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/right_shift_arithmetic.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/or_A.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/not_A.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/mux_Sumador.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/mux_ALU.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/left_shift_logic.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/left_shift_arithmetic.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/flags.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/and_A.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits {C:/Users/Chris/Documents/TEC/Taller/LAB_3/ALU_N_bits/ALU_N_bits.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/muxARM.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/adderARM.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/PC_REG.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/data_memory.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/extend.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/data_path.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/decoder.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/conditions.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/REG_EN.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/conditional_logic.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/ARMV4.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/control_unit.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/ARM_RAM_INS.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/instruction_memory.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4 {C:/Users/Chris/Documents/TEC/Taller/Proyecto/Processor/ARMV4/register_file.sv}

