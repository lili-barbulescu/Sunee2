#!/bin/bash
openocd \
	-s ../../OpenOCD/openocd-0.10.0/tcl \
	-f interface/stlink-v2.cfg \
	-f target/nrf52.cfg \
	-c init \
	-c "reset init" \
	-c halt \
	-c "nrf52 mass_erase" \
	-c "program nrf51422_xxac.hex verify" \
	-c reset \
	-c exit \