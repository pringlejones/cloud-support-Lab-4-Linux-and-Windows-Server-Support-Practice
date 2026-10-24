# cloud-support-Lab-4-Linux-and-Windows-Server-Support-Practice
## 🐧 Lab 4: Local Operating System Systems Engineering Scenarios

This module demonstrates deep host-level Linux systems administration, systems engineering metrics parsing, process lifecycle tracking, and cron task automation scripting.

### 📋 Documented Engineering Incidents (Troubleshooting Tickets)

| Ticket Reference | Operating System | Observed System Symptom | Applied Resolution Strategy |
| :--- | :--- | :--- | :--- |
| **[Ticket #13: Process Failures](./lab4-os-support-scenarios/ticket-13-service-failure.md)** | Ubuntu / systemd | Service fails initialization paths completely, dropping out with exit error notifications. | Evaluated error directives using `journalctl` logs and adjusted configuration layout syntax. |
| **[Ticket #14: Space Saturated](./lab4-os-support-scenarios/ticket-14-disk-exhaustion.md)** | Linux Filesystem | Automated systems drop data pipelines, returning core faults: `No space left on device`. | Isolated storage leaks with `df` and `du`, clearing uncompressed file allocations. |
| **[Ticket #15: Access Lockout](./lab4-os-support-scenarios/ticket-15-permission-denied.md)** | Linux Security Layer | Endpoints drop public request handshakes, outputting standard `403 Forbidden` screens. | Fixed structural permissions using `chmod` to authorize read paths. |

---

### 🛠️ Core Toolkit Demonstrated
- **Cloud Instrumentation Ecosystems:** Amazon Web Services (AWS), Microsoft Azure Platform Architecture Management.
- **Systems Engineering Instrumentation:** systemd Lifecycles, Linux Telemetry Utilities (`journalctl`, `ss`, `df`, `du`), Out-of-band Serial Kernel Interfaces.
- **Security & IAM Orchestration:** Stateless Perimeter Firewalls (NACLs), Stateful Security Filters (NSG), Identity least-privilege JSON policy generation frameworks.
