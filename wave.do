onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Reset /computer_tb/reset_TB
add wave -noupdate -label Clock /computer_tb/clock_TB
add wave -noupdate -divider {Control Unit}
add wave -noupdate -label Current_State /computer_tb/DUT1/CPU_Part/CPU_control_unit/current_state
add wave -noupdate -divider {Program Counter}
add wave -noupdate -label PC_Load /computer_tb/DUT1/CPU_Part/CPU_data_path/PC_Load
add wave -noupdate -label PC_Inc /computer_tb/DUT1/CPU_Part/CPU_data_path/PC_Inc
add wave -noupdate -label PC -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/PC
add wave -noupdate -divider {Instruction Registers}
add wave -noupdate -label IR_Load /computer_tb/DUT1/CPU_Part/CPU_data_path/IR_Load
add wave -noupdate -label IR -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/IR
add wave -noupdate -divider {Memory Address Registers}
add wave -noupdate -label MAR_Load /computer_tb/DUT1/CPU_Part/CPU_data_path/MAR_Load
add wave -noupdate -label MAR -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/MAR
add wave -noupdate -divider {General Purpose Registers}
add wave -noupdate -label A_Load /computer_tb/DUT1/CPU_Part/CPU_data_path/A_Load
add wave -noupdate -label A -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/A
add wave -noupdate -label B_Load /computer_tb/DUT1/CPU_Part/CPU_data_path/B_Load
add wave -noupdate -label B -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/B
add wave -noupdate -divider {Bus System}
add wave -noupdate -label from_memory -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/from_memory
add wave -noupdate -label to_memory -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/to_memory
add wave -noupdate -label Bus1_Sel /computer_tb/DUT1/CPU_Part/CPU_data_path/Bus1_Sel
add wave -noupdate -label Bus2_Sel /computer_tb/DUT1/CPU_Part/CPU_data_path/Bus2_Sel
add wave -noupdate -label Bus1 -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/Bus1
add wave -noupdate -label Bus2 -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/Bus2
add wave -noupdate -label write /computer_tb/DUT1/CPU_Part/CPU_control_unit/writeEn
add wave -noupdate -divider ALU
add wave -noupdate -label CCR_Result /computer_tb/DUT1/CPU_Part/CPU_data_path/CCR_Result
add wave -noupdate -label ALU_Result -radix hexadecimal /computer_tb/DUT1/CPU_Part/CPU_data_path/ALU_result
add wave -noupdate -label NZVC /computer_tb/DUT1/CPU_Part/CPU_data_path/NZVC
add wave -noupdate -divider Ports
add wave -noupdate -radix hexadecimal /computer_tb/port_out_00_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_00_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_01_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_02_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_03_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_04_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_05_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_06_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_07_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_08_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_09_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_10_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_11_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_12_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_13_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_14_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_out_15_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_01_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_02_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_03_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_04_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_05_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_06_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_07_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_08_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_09_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_10_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_11_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_12_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_13_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_14_TB
add wave -noupdate -radix hexadecimal /computer_tb/port_in_15_TB
add wave -noupdate /computer_tb/DUT1/clock
add wave -noupdate /computer_tb/DUT1/reset
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_00
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_01
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_02
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_03
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_04
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_05
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_06
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_07
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_08
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_09
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_10
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_11
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_12
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_13
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_14
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_in_15
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_00
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_01
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_02
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_03
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_04
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_05
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_06
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_07
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_08
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_09
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_10
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_11
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_12
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_13
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_14
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/port_out_15
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/my_address
add wave -noupdate /computer_tb/DUT1/my_write
add wave -noupdate /computer_tb/DUT1/my_clocl
add wave -noupdate /computer_tb/DUT1/my_reset
add wave -noupdate /computer_tb/DUT1/my_memory
add wave -noupdate /computer_tb/DUT1/my_data
add wave -noupdate /computer_tb/DUT1/CPU_Part/clock
add wave -noupdate /computer_tb/DUT1/CPU_Part/reset
add wave -noupdate /computer_tb/DUT1/CPU_Part/from_memory
add wave -noupdate /computer_tb/DUT1/CPU_Part/writeEn
add wave -noupdate /computer_tb/DUT1/CPU_Part/to_memory
add wave -noupdate /computer_tb/DUT1/CPU_Part/address
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_IR_load
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_MAR_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_PC_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_PC_Inc
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_A_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_B_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_CCR_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_IR
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_ALU_Sel
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_CCR_Result
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_Bus1_Sel
add wave -noupdate /computer_tb/DUT1/CPU_Part/cpu_Bus2_Sel
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/clock
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/reset
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/IR
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/CCR_Result
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/IR_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/MAR_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/PC_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/PC_Inc
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/A_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/B_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/CCR_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/Bus2_Sel
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/Bus1_Sel
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/ALU_Select
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_control_unit/next_state
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/clock
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/reset
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/CCR_Load
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/ALU_Select
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/address
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/PC_uns
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/data_path_ALU/ALU_Sel
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/data_path_ALU/A
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/data_path_ALU/B
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/data_path_ALU/ALU_Result
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/data_path_ALU/NZVC
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/data_path_ALU/alu_ALU_Result
add wave -noupdate /computer_tb/DUT1/CPU_Part/CPU_data_path/data_path_ALU/alu_NZVC
add wave -noupdate /computer_tb/DUT1/Memory_part/clock
add wave -noupdate /computer_tb/DUT1/Memory_part/reset
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/address
add wave -noupdate /computer_tb/DUT1/Memory_part/writeEn
add wave -noupdate /computer_tb/DUT1/Memory_part/data_in
add wave -noupdate /computer_tb/DUT1/Memory_part/data_out
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_00
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_01
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_02
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_03
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_04
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_05
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_06
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_07
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_08
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_09
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_10
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_11
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_12
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_13
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_14
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_in_15
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_00
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_01
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_02
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_03
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_04
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_05
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_06
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_07
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_08
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_09
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_10
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_11
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_12
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_13
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_14
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/port_out_15
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/rom_data_out
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/rw_data_out
add wave -noupdate /computer_tb/DUT1/Memory_part/mem_ROM/clock
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/mem_ROM/address
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/mem_ROM/data_out
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/mem_ROM/rom_data_out
add wave -noupdate /computer_tb/DUT1/Memory_part/mem_ROM/EN
add wave -noupdate /computer_tb/DUT1/Memory_part/mem_RW/clock
add wave -noupdate /computer_tb/DUT1/Memory_part/mem_RW/writeEn
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/mem_RW/data_in
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/mem_RW/address
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/mem_RW/data_out
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/Memory_part/mem_RW/RW
add wave -noupdate /computer_tb/DUT1/Memory_part/mem_RW/EN
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {377930 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 224
configure wave -valuecolwidth 103
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {169848 ps} {321103 ps}
