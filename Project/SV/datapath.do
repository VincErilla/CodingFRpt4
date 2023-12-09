# Copyright 1991-2016 Mentor Graphics Corporation
# 
# Modification by Oklahoma State University
# Use with Testbench 
# James Stine, 2008
# Go Cowboys!!!!!!
#
# All Rights Reserved.
#
# THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION
# WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION
# OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.

# Use this run.do file to run this example.
# Either bring up ModelSim and type the following at the "ModelSim>" prompt:
#     do run.do
# or, to run from a shell, type the following at the shell prompt:
#     vsim -do run.do -c
# (omit the "-c" to see the GUI while running from the shell)

onbreak {resume}

# create library
if [file exists work] {
    vdel -all
}
vlib work

# compile source files
vlog GOL_tb.sv datapath.sv flopenr.sv mux.sv FSM.sv

# start and run simulation
vsim -voptargs=+acc work.stimulus

view list
view wave

-- display input and output signals as hexidecimal values
# Diplays All Signals recursively
# add wave -hex -r /stimulus/*
add wave -noupdate -divider -height 32 "FSM"
add wave -hex /stimulus/dut/grid
add wave -hex /stimulus/dut/reset
add wave -hex /stimulus/dut/q
add wave -hex /stimulus/dut/grid_evolve
add wave -hex /stimulus/dut/y
add wave -hex /stimulus/dut/f1/clk
add wave -hex /stimulus/dut/f1/reset
add wave -hex /stimulus/dut/f1/en
add wave -hex /stimulus/dut/f1/d
add wave -hex /stimulus/dut/dp/grid
add wave -hex /stimulus/dut/dp/grid_evolve
add wave -hex /stimulus/dut/f1/q


add list -hex -r /stimulus/*
add log -r /*

-- Set Wave Output Items 
TreeUpdate [SetDefaultTree]
WaveRestoreZoom {0 ps} {75 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2

-- Run the Simulation
run 500 ns
