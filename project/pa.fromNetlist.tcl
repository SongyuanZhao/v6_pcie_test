
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name v6_pciex8 -dir "D:/FPGA/v6_pciex8/planAhead_run_2" -part xc6vlx240tff1156-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/FPGA/v6_pciex8/xilinx_pcie_2_0_ep_v6.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/FPGA/v6_pciex8} }
set_property target_constrs_file "xilinx_pci_exp_v6_8_lane_ep_ml605_gen2.ucf" [current_fileset -constrset]
add_files [list {xilinx_pci_exp_v6_8_lane_ep_ml605_gen2.ucf}] -fileset [get_property constrset [current_run]]
link_design
