#!/bin/bash
openocd \
	-s /Your-path/openocd-git_install/share/openocd/scripts/ \
	-f /home/mihai/Programs/openocd_nrf52/openocd-code/tcl/interface/stlink-v2.cfg \
	-f /home/mihai/Programs/openocd_nrf52/openocd-code/tcl/target/nrf52.cfg \
	-c init \
	-c "reset init" \
	-c halt \
	-c "nrf52 mass_erase" \
	-c "program nrf51422_xxac.hex verify" \
	-c reset \
	-c exit \
