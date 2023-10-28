# Installing ioDrive Ubuntu/Mint

Folks have been doing a great job over at [RemixVSL/iomemory-vsl](https://github.com/RemixVSL/iomemory-vsl)
to keep these devices relevant for modern kernels.

This is just a quick installer mainly for me to quickly install on my system, I'm
leaving it open for anyone else to use.

## Installation

    # Always check to see what
    # someone is up to, before
    # installing their nonsense!
    cat install
    ./install

## Check for Devices

    sudo fio-status

Should return something like this, here I have two devices.

    Found 2 ioMemory devices in this system
    Driver version: 3.2.16 build 1731

    Adapter: Single Controller Adapter
    	Fusion-io ioDrive2 365GB, Product Number:F00-001-365G-CS-0001, SN:1249D1716, FIO SN:1249D1716
    	External Power: NOT connected
    	PCIe Power limit threshold: 24.75W
    	Connected ioMemory modules:
    	  fct0:	Product Number:F00-001-365G-CS-0001, SN:1249D1716

    fct0	Attached
    	ioDrive2 Adapter Controller, Product Number:F00-001-365G-CS-0001, SN:1249D1716
    	Located in slot 0 Center of ioDrive2 Adapter Controller SN:1249D1716
    	PCI:20:00.0, Slot Number:5
    	Firmware v7.1.17, rev 116786 Public
    	365.00 GBytes device size
    	Internal temperature: 61.03 degC, max 62.51 degC
    	Reserve space status: Healthy; Reserves: 100.00%, warn at 10.00%
    	Contained VSUs:
    	  fioa:	ID:0, UUID:a9a7bf75-f273-4988-8de1-934a41caedde

    fioa	State: Online, Type: block device
    	ID:0, UUID:a9a7bf75-f273-4988-8de1-934a41caedde
    	365.00 GBytes device size

    Adapter: Single Controller Adapter
    	Fusion-io ioDrive2 365GB, Product Number:F00-001-365G-CS-0001, SN:1332D094C, FIO SN:1332D094C
    	External Power: NOT connected
    	PCIe Power limit threshold: 24.75W
    	Connected ioMemory modules:
    	  fct1:	Product Number:F00-001-365G-CS-0001, SN:1332D094C

    fct1	Attached
    	ioDrive2 Adapter Controller, Product Number:F00-001-365G-CS-0001, SN:1332D094C
    	Located in slot 0 Center of ioDrive2 Adapter Controller SN:1332D094C
    	PCI:b0:00.0, Slot Number:2
    	Firmware v7.1.17, rev 116786 Public
    	365.00 GBytes device size
    	Internal temperature: 61.52 degC, max 63.49 degC
    	Reserve space status: Healthy; Reserves: 100.00%, warn at 10.00%
    	Contained VSUs:
    	  fiob:	ID:0, UUID:77c2bf0d-19c3-4fa1-a9f2-1d7a903e0498

    fiob	State: Online, Type: block device
    	ID:0, UUID:77c2bf0d-19c3-4fa1-a9f2-1d7a903e0498
    	365.00 GBytes device size

## Mount or Whatever

You can access the devices at /dev/fio*

    ls /dev |grep fio

Mine returns:

    brw-rw----   1 root disk      252,   0 Oct 28 01:58 fioa
    brw-rw----   1 root disk      252,  16 Oct 28 01:58 fiob

From there you can mount these or use them in a zfs pool or whatever you're into.
