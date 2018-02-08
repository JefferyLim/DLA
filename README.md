# DLA

During the Fall 2016 to Spring 2017 school year, I was given the opportunity to work with Professor Eric Keller and Michael Coughlin on working to develop a way to verify RSA keys. This was inspired from a paper they wrote called *Apps with Hardware: Enabling Run-time Architectural Customization in Smart Phones* where the Zynq was used as a smart-phone with a reconfigurable hardware. 

This was in thanks to the CU Boulder Discovery Learning Apprenticeship. 

This repo goes through the difficult task of working with the Zynq architecture and attempting to find a way to efficiently work with RSA. The initial steps were to get the Zynq up and running with an ARM Core so there is a way to interface with hardware and software. The next step was to get an implementation of RSA to show functionality of it on the board without using any third party IP. This task prove to be extremely difficult and we turned our eyes on focusing the project into doing verification of keys. 

This step looked at using Vivado HLS to try and develop some code to do big int math. Since we only are doing verification, we needed to do modular exponentiation. 

I was able to get an implementation to fit on the Xilinx part and it was able to perform modular exponentiation on hardware as well. Much of the design was done in Vivado's IP so there is little HDL written. Since HLS was used, the big int library was done in C. 

During the process, it was also shown that Vivado had their own big int library, but when experimenting with different big int math, their implementation utilized a lot more resources than what was available on the chip. The difference between the two libraries showed that my library brought utilization down to the point where it could fit onto the chip.

The repo is very disorganized and still needs to be cleaned up. 
