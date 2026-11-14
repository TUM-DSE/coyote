# Coyote Example 16: Many vFPGAs

This example fills the FPGA with as many vFPGAs as the shell supports and checks that every one
of them works. Each vFPGA runs the same small loopback, which streams data from host memory
straight back to it, and the host program sends a different pattern through every vFPGA at once
and reports any vFPGA that returns wrong data.

The default is 15 vFPGAs, the most the shipped static layers take, and you select fewer with
`-DN_REGIONS=<n>`:

```sh
cmake .. -DFDEV_NAME=u280 -DN_REGIONS=8
```

More than 15 vFPGAs need a rebuilt static layer (`BUILD_STATIC=1`, `BUILD_SHELL=0`) and do not
route on the V80 yet.

Run the host program with the number of vFPGAs the bitstream contains:

```sh
./test -n 15
```

Building, loading the driver and programming the FPGA work as described in the
[examples README](../README.md).
