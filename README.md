# oss-audit--24BHI10081-
# OSS Audit — Git
**Student Name:** Kanishka Patidar
**Roll Number:** 24BHI10081
**Chosen Software:** Git (GPL v2)
**Course:** Open Source Software

---

## What is this project?

This is a project for the Open Source Software course.
I have chosen Git as my open source software and conducted a
full audit of it — covering its origin story, licence analysis,
ethics, Linux footprint, ecosystem, and comparison with
proprietary alternatives.

---

## Repository Structure
```
oss-audit-24BHI10081/
├── script1_system_identity.sh
├── script2_package_inspector.sh
├── script3_disk_auditor.sh
├── script4_log_analyzer.sh
├── script5_manifesto.sh
└── README.md
```

---

## Scripts Overview

| Script | File | What it does |
|--------|------|--------------|
| 1 | script1_system_identity.sh | Displays system info — kernel, user, uptime, date, OS licence |
| 2 | script2_package_inspector.sh | Checks if Git is installed and prints its philosophy note |
| 3 | script3_disk_auditor.sh | Loops through key Linux folders and shows size and permissions |
| 4 | script4_log_analyzer.sh | Reads a log file and counts how many lines contain a keyword |
| 5 | script5_manifesto.sh | Asks 3 questions and saves a personal OSS manifesto to a file |

---

## Dependencies
```bash
sudo apt update
sudo apt install git -y
```

---

## How to Run

### Step 1 — Clone this repository
```bash
git clone https://github.com/yourusername/oss-audit-24BHI10081.git
cd oss-audit-24BHI10081
```

### Step 2 — Give permission to run all scripts
```bash
chmod +x *.sh
```

### Step 3 — Run each script

**Script 1 — System Identity Report**
```bash
./script1_system_identity.sh
```

**Script 2 — Package Inspector**
```bash
./script2_package_inspector.sh
```

**Script 3 — Disk and Permission Auditor**
```bash
./script3_disk_auditor.sh
```

**Script 4 — Log File Analyzer**
```bash
./script4_log_analyzer.sh /var/log/dpkg.log warning
```

**Script 5 — Manifesto Generator**
```bash
./script5_manifesto.sh
```

---

## Shell Concepts Used

| Concept | Used in |
|---------|---------|
| Variables and command substitution `$()` | Script 1 |
| if-then-else and case statement | Script 2 |
| for loop and pipe `\|` with awk | Script 3 |
| while read loop and arguments `$1 $2` | Script 4 |
| read -p for user input and file writing `>` `>>` | Script 5 |

---

## Tested On

- OS: Ubuntu 22.04 (WSL2 on Windows)
- Git version: 2.34.1
- Shell: Bash 5.1

---

## Author

| Field | Details |
|-------|---------|
| Name | Kanishka Patidar |
| Roll Number | 24BHI10081 |
| Course | Open Source Software |
| Software Audited | Git — licensed under GPL v2 |