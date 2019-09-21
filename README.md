# Docker Smartmontools

## Usage example

### Using docker-compose

```
DEVICE=/dev/sdb TYPE=sntjmicron docker-compose up
```

### Or manually

```
docker build --build-arg version=7.0 -t smartmontools .
docker run -it --device /dev/sdb --cap-add=SYS_RAWIO smartmontools smartctl -a -d sntjmicron /dev/sdb
```

### Sample output

```
Starting smartmontools_smartmontools_1 ... done
Attaching to smartmontools_smartmontools_1
smartmontools_1  | smartctl 7.0 2018-12-30 r4883 [x86_64-linux-5.0.0-23-generic] (local build)
smartmontools_1  | Copyright (C) 2002-18, Bruce Allen, Christian Franke, www.smartmontools.org
smartmontools_1  |
smartmontools_1  | === START OF INFORMATION SECTION ===
smartmontools_1  | Model Number:                       WDS250G3X0C-00SJG0
smartmontools_1  | Serial Number:                      190570804757
smartmontools_1  | Firmware Version:                   102000WD
smartmontools_1  | PCI Vendor/Subsystem ID:            0x15b7
smartmontools_1  | IEEE OUI Identifier:                0x001b44
smartmontools_1  | Total NVM Capacity:                 250,059,350,016 [250 GB]
smartmontools_1  | Unallocated NVM Capacity:           0
smartmontools_1  | Controller ID:                      8215
smartmontools_1  | Number of Namespaces:               1
smartmontools_1  | Namespace 1 Size/Capacity:          250,059,350,016 [250 GB]
smartmontools_1  | Namespace 1 Formatted LBA Size:     512
smartmontools_1  | Namespace 1 IEEE EUI-64:            001b44 8b4452b02d
smartmontools_1  | Local Time is:                      Sat Sep 21 18:57:03 2019 UTC
smartmontools_1  | Firmware Updates (0x14):            2 Slots, no Reset required
smartmontools_1  | Optional Admin Commands (0x0017):   Security Format Frmw_DL Self_Test
smartmontools_1  | Optional NVM Commands (0x001f):     Comp Wr_Unc DS_Mngmt Wr_Zero Sav/Sel_Feat
smartmontools_1  | Maximum Data Transfer Size:         128 Pages
smartmontools_1  | Warning  Comp. Temp. Threshold:     80 Celsius
smartmontools_1  | Critical Comp. Temp. Threshold:     85 Celsius
smartmontools_1  | Namespace 1 Features (0x02):        NA_Fields
smartmontools_1  |
smartmontools_1  | Supported Power States
smartmontools_1  | St Op     Max   Active     Idle   RL RT WL WT  Ent_Lat  Ex_Lat
smartmontools_1  |  0 +     5.00W       -        -    0  0  0  0        0       0
smartmontools_1  |  1 +     3.50W       -        -    1  1  1  1        0       0
smartmontools_1  |  2 +     3.00W       -        -    2  2  2  2        0       0
smartmontools_1  |  3 -   0.0700W       -        -    3  3  3  3     4000   10000
smartmontools_1  |  4 -   0.0025W       -        -    4  4  4  4     4000   45000
smartmontools_1  |
smartmontools_1  | Supported LBA Sizes (NSID 0x1)
smartmontools_1  | Id Fmt  Data  Metadt  Rel_Perf
smartmontools_1  |  0 +     512       0         2
smartmontools_1  |  1 -    4096       0         1
smartmontools_1  |
smartmontools_1  | === START OF SMART DATA SECTION ===
smartmontools_1  | SMART overall-health self-assessment test result: PASSED
smartmontools_1  |
smartmontools_1  | SMART/Health Information (NVMe Log 0x02)
smartmontools_1  | Critical Warning:                   0x00
smartmontools_1  | Temperature:                        54 Celsius
smartmontools_1  | Available Spare:                    100%
smartmontools_1  | Available Spare Threshold:          10%
smartmontools_1  | Percentage Used:                    0%
smartmontools_1  | Data Units Read:                    413,082 [211 GB]
smartmontools_1  | Data Units Written:                 2,635,282 [1.34 TB]
smartmontools_1  | Host Read Commands:                 4,696,367
smartmontools_1  | Host Write Commands:                10,788,761
smartmontools_1  | Controller Busy Time:               25
smartmontools_1  | Power Cycles:                       2,389
smartmontools_1  | Power On Hours:                     89
smartmontools_1  | Unsafe Shutdowns:                   1,805
smartmontools_1  | Media and Data Integrity Errors:    0
smartmontools_1  | Error Information Log Entries:      0
smartmontools_1  | Warning  Comp. Temperature Time:    0
smartmontools_1  | Critical Comp. Temperature Time:    0
smartmontools_1  |
smartmontools_1  | Error Information (NVMe Log 0x01, max 256 entries)
smartmontools_1  | No Errors Logged
smartmontools_1  |
smartmontools_smartmontools_1 exited with code 0
```
