# Stripped11-Scripts
This repository hosts all scripts and tweaks used in the creation of Stripped11.

These scripts are provided openly for absolute transparency, allowing advanced users and deployment engineers to review, audit, or manually apply the exact system modifications implemented within the build.

---

## ⚠️ Critical Warnings

Applying these configurations modifications will fundamentally alter default operating system behaviors. Review the following component-specific risks before deployment:

### 1. Windows Defender & Core Security Nuke
* **Tweak Profile:** `Remove_Defender.bat`
* **Risk Level:** Extreme
* **Impact:** Disabling Windows Defender completely strips the OS of all native security layers, including real-time scanning, the Windows Security Center UI, SmartScreen web filtering, and the native Windows Firewall. The system will operate with **zero built-in protection** against malware, network intrusions, or malicious binaries.

### 2. Print Spooler & Foundation Purge
* **Tweak Profile:** `Disable_Services.bat`
* **Risk Level:** High
* **Impact:** The printing infrastructure is completely excised from the kernel and user-mode spaces. This modification is **irreversible** via standard UI toggles. The operating system will lose all ability to detect, install, or communicate with local or network printers, and the "Print to PDF" logical device will be permanently broken.

### 3. Hyper-V, VBS, & Virtualization Eradication
* **Tweak Profile:** `Disable_Services.bat`
* **Risk Level:** Moderate (High for developers/enterprise)
* **Impact:** Disabling Hyper-V and Virtualization-Based Security (VBS) recovers significant CPU cycles and drops frame-time variance, but it permanently breaks Windows Sandbox, Windows Subsystem for Linux (WSL2), Windows Subsystem for Android (WSA), and third-party type-2 hypervisors (VMware, VirtualBox).

### 4. Bluetooth Driver & Service Stack Elimination
* **Tweak Profile:** `Disable_Services.bat`, `Performance_Tweaks.bat`)
* **Risk Level:** Moderate
* **Impact:** The entire Bluetooth communication layer is deprecated. Wireless peripherals including Bluetooth mice, keyboards, headsets, and Xbox wireless controllers utilizing standard Bluetooth connections will fail to pair or communicate. Wireless Xbox controllers must use the official Microsoft 2.4GHz wireless adapter or a direct USB-C cable.

### 5. Native Windows Search & Indexing Removal
* **Tweak Profile:** `UI_Explorer_Tweaks.bat`, `Disable_Services.bat`
* **Risk Level:** Moderate
* **Impact:** Removing the indexing engine lowers background storage read/write operations drastically to prevent micro-stuttering. However, this slows down local file discovery in File Explorer, and completely removes web/Bing results from the Start Menu interface.

---

## Script Architecture & Deployment Map

The optimization pipeline is divided into specialized modules to isolate system changes:

* `Disable_Services.bat` — Minimizes background process count by stripping telemetry, logging, and unneeded infrastructure services.
* `Remove_AppX.bat` — Purges over 50 pre-installed UWP applications, provisioned packages, and cloud-delivery junk.
* `Remove_Defender.bat` — Terminates security services, removes context menu hooks, and stops kernel logging buffers.
* `Disable_Privacy_Telemetry.bat` — Direct registry routing of tracking, advertising IDs, and synchronization mechanisms to null.
* `Performance_Tweaks.bat` — Implements advanced process thread scheduling, memory layout modifications, and hardware polling overrides.
* `UI_Explorer_Tweaks.bat` — Streamlines the shell interface, forces compact explorer views, and restores the classic Win32 layout.
* `Remove_Edge.bat` — Deletes Microsoft Edge binaries, updates infrastructure, and protocol handler bindings.
* `Disable_Updates.bat` — Halts automated maintenance routines and blocks Windows Update orchestrators.
* `Gaming_Optimizations.bat` — Enforces raw input buffering, disables network interrupt moderation, and optimizes BCD configuration data.
