###
### V80 QSFP3 — 200G DCMAC reference clock pins for DCMAC index 1 (EN_NET_1).
### See v80_shell_net_0.xdc for how the pins were verified.
###
###   EN_NET_1 -> index 1 = DCMAC_X0Y2 -> GTM_QUAD_X0Y9, bank 111 -> qsfp3
###   AL17  GTM_REFCLKP0_111   BANK 111      AL16  GTM_REFCLKN0_111
###

# DCMAC index 1 — bank 111, qsfp3
set_property PACKAGE_PIN AL17 [get_ports gt1_refclk_p]
set_property PACKAGE_PIN AL16 [get_ports gt1_refclk_n]
