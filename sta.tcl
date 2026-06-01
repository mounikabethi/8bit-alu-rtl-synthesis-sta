read_liberty NangateOpenCellLibrary_typical.lib

read_verilog ../synthesis/alu8_netlist.v
link_design alu8

read_sdc ../constraints/alu8.sdc

report_checks -path_delay max > timing_report.rpt
report_checks -path_delay min >> timing_report.rpt

report_tns >> timing_report.rpt
report_wns >> timing_report.rpt
