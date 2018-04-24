
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name v6_pciex8 -dir "D:/FPGA/v6_pciex8/planAhead_run_3" -part xc6vlx240tff1156-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/FPGA/v6_pciex8/xilinx_pcie_2_0_ep_v6.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/FPGA/v6_pciex8} }
set_property target_constrs_file "xilinx_pci_exp_v6_8_lane_ep_ml605_gen2.ucf" [current_fileset -constrset]
add_files [list {xilinx_pci_exp_v6_8_lane_ep_ml605_gen2.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/FPGA/v6_pciex8/xilinx_pcie_2_0_ep_v6.ncd"
if {[catch {read_twx -name results_1 -file "D:/FPGA/v6_pciex8/xilinx_pcie_2_0_ep_v6.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/FPGA/v6_pciex8/xilinx_pcie_2_0_ep_v6.twx\": $eInfo"
}
