#!/bin/bash
source /opt/intel/oneapi/setvars.sh > /dev/null 2>&1
icpx -fsycl -fintelfpga -DFPGA_HARDWARE src/model_quantised.cpp -Xshardware -o model_quantised.fpga -Xstarget=intel_s10sx_pac:pac_s10_usm
