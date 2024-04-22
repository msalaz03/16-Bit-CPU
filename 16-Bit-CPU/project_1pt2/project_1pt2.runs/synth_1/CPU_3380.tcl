# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7vx485tffg1157-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/dmurillo/Downloads/finalproject1/finalproject1.cache/wt [current_project]
set_property parent.project_path C:/Users/dmurillo/Downloads/finalproject1/finalproject1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/dmurillo/Downloads/finalproject1/finalproject1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/MUX312.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/and_gate2.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/full_adder2.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/or_gate2.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/ALU4.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/PC_REG.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/ALU_16Bit3.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/mux3_11.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/Memory.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/Registers2.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/mux2_11.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/Signextend1.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/Control1.vhd
  C:/Users/dmurillo/Downloads/ProjectPt1stuff/CPU_33802.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top CPU_3380 -part xc7vx485tffg1157-1


write_checkpoint -force -noxdef CPU_3380.dcp

catch { report_utilization -file CPU_3380_utilization_synth.rpt -pb CPU_3380_utilization_synth.pb }
