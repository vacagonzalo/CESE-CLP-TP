# On-board led for alu outputs
set_property -dict { PACKAGE_PIN R14    IOSTANDARD LVCMOS33 } [get_ports { alu_out[0] }];
set_property -dict { PACKAGE_PIN P14    IOSTANDARD LVCMOS33 } [get_ports { alu_out[1] }];
set_property -dict { PACKAGE_PIN N16    IOSTANDARD LVCMOS33 } [get_ports { alu_out[2] }];
set_property -dict { PACKAGE_PIN M14    IOSTANDARD LVCMOS33 } [get_ports { alu_out[3] }];

# alu_sel in On-board buttons
set_property -dict { PACKAGE_PIN D19    IOSTANDARD LVCMOS33  } [get_ports { alu_sel[0] }];
set_property -dict { PACKAGE_PIN D20    IOSTANDARD LVCMOS33  } [get_ports { alu_sel[1] }];
set_property -dict { PACKAGE_PIN L20    IOSTANDARD LVCMOS33  } [get_ports { alu_sel[2] }];
set_property -dict { PACKAGE_PIN L19    IOSTANDARD LVCMOS33  } [get_ports { alu_sel[3] }];

# input a in JA[1, 2, 3, 4]
set_property -dict { PACKAGE_PIN Y18    IOSTANDARD LVCMOS33  } [get_ports { a[0] }];
set_property -dict { PACKAGE_PIN Y19    IOSTANDARD LVCMOS33  } [get_ports { a[1] }];
set_property -dict { PACKAGE_PIN Y16    IOSTANDARD LVCMOS33  } [get_ports { a[2] }];
set_property -dict { PACKAGE_PIN Y17    IOSTANDARD LVCMOS33  } [get_ports { a[3] }];

# input b in JB[1, 2, 3, 4]
set_property -dict { PACKAGE_PIN W14    IOSTANDARD LVCMOS33  } [get_ports { b[0] }];
set_property -dict { PACKAGE_PIN Y14    IOSTANDARD LVCMOS33  } [get_ports { b[1] }];
set_property -dict { PACKAGE_PIN T11    IOSTANDARD LVCMOS33  } [get_ports { b[2] }];
set_property -dict { PACKAGE_PIN T10    IOSTANDARD LVCMOS33  } [get_ports { b[3] }];

# output carryout in LED tri color
set_property -dict { PACKAGE_PIN W15    IOSTANDARD LVCMOS33  } [get_ports { carryout }];
