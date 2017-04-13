using CircuitScape
using Base.Test

include("internal.jl")

# Simple test with one connected component
r = compute("input/network/sgNetworkVerify2.ini")
x = readdlm("output_verify/sgNetworkVerify2_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Network test with multiple connected components
r = compute("input/network/sgNetworkVerify1.ini")
x = readdlm("output_verify/sgNetworkVerify1_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Network test with multiple cc and resistance specified
r = compute("input/network/sgNetworkVerify3.ini")
x = readdlm("output_verify/sgNetworkVerify3_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Simple Network test with advanced mode
r = compute("input/network/mgNetworkVerify1.ini")
x = readdlm("output_verify/mgNetworkVerify1_voltages.txt")
x = x[:,2]

@test sumabs2(x - r) < 1e-6 

# Network test with advanced mode and multiple grounds
r = compute("input/network/mgNetworkVerify2.ini")
x = readdlm("output_verify/mgNetworkVerify2_voltages.txt")
x = x[:,2]

@test sumabs2(x - r) < 1e-6 

# Network test with advanced mode and both multiple grounds and sources
r = compute("input/network/mgNetworkVerify3.ini")
x = readdlm("output_verify/mgNetworkVerify3_voltages.txt")
x = x[:,2]

@test sumabs2(x - r) < 1e-6 

# Simple Raster test
r = compute("input/raster/2/sgVerify2.ini")
x = readdlm("output_verify/sgVerify2_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Another raster test, sort points map
r = compute("input/raster/1/sgVerify1.ini")
x = readdlm("output_verify/sgVerify1_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, points in txt file
r = compute("input/raster/7/sgVerify7.ini")
x = readdlm("output_verify/sgVerify7_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, no polygon
r = compute("input/raster/4/sgVerify4.ini")
x = readdlm("output_verify/sgVerify4_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, no polygon
r = compute("input/raster/15/sgVerify15.ini")
x = readdlm("output_verify/sgVerify15_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Another Raster test, no polygon
r = compute("input/raster/14/sgVerify14.ini")
x = readdlm("output_verify/sgVerify14_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, with polygons in focal nodes
r = compute("input/raster/3/sgVerify3.ini")
x = readdlm("output_verify/sgVerify3_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, with polygons in focal nodes
r = compute("input/raster/5/sgVerify5.ini")
x = readdlm("output_verify/sgVerify5_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, with polygons in focal nodes
r = compute("input/raster/8/sgVerify8.ini")
x = readdlm("output_verify/sgVerify8_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, with polygons in focal nodes
r = compute("input/raster/9/sgVerify9.ini")
x = readdlm("output_verify/sgVerify9_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, with polygons in focal nodes, but no polygons file
r = compute("input/raster/6/sgVerify6.ini")
x = readdlm("output_verify/sgVerify6_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6

# Raster test, with polygons in focal nodes, and polygons file
r = compute("input/raster/10/sgVerify10.ini")
x = readdlm("output_verify/sgVerify10_resistances.out")
x = x[2:end, 2:end]

@test sumabs2(x - r) < 1e-6
