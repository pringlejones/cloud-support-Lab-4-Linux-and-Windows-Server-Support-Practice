# Ticket #14: File System Volume Exhaustion (100% Storage Capacity Fault)

## 🚨 Customer Incident Report
- **Symptom:** Core host modules report an absolute inability to write data layers, log changes, or record runtime variables.
- **Behavior:** Operational processes drop executing tasks instantly, returning core errors: `No space left on device`.

## 🔍 Engineering Triage & Diagnostics
1. **Sizing Mapping Check:** Queried the master filesystem metrics chart using disk capacity indicators (`df -h`).
2. **Directory Breakdown:** Evaluated workspace directory sizing targets using system trackers (`sudo du -sh /* | sort -h`) to systematically pinpoint space leaks.

## 🛠️ Root Cause Analysis (RCA) & Resolution
- **Root Cause:** A simulation script ran out of bounds, injecting a heavy, uncompressed 10-Gigabyte raw storage block file (`/large_error_dump.img`) onto the root file block array, hitting the maximum disk threshold.
- **Applied Fix:** Wiped the orphan data block file completely using terminal removal actions (`sudo rm -f`), instantly recovering storage headroom.

## ✅ Fix Verification
Space metrics utilities confirm partition boundaries returned to healthy operational storage metrics.

### 🖼️ Diagnostic Evidence
**Figure 14.1: Terminal Sizing Utility Capturing Complete System Storage Blockage**
![Storage Capacity Saturated Error]<img width="1440" height="900" alt="case2-disk-full (2)" src="https://github.com/user-attachments/assets/2002cfd3-3099-45d7-b160-30ef9276982f" />

