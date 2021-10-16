#!/usr/bin/env bash

set -e

# Analyse sources
ghdl -a ../rtl/captouch.vhd
ghdl -a captouch_tb.vhd

# Elaborate top entity
ghdl -e captouch_tb

# Run simulation
ghdl -e captouch_tb
ghdl -r captouch_tb --stop-time=2ms --vcd=captouch.vcd
