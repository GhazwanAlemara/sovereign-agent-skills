# Sovereign Agent Skills & Remote MCP Suite

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Protected by Supernova Shield](https://supernova.cool/api/v1/discovery/shield-badge.svg)](https://supernova.cool/open)

**Production-ready AI agent skills (`SKILL.md`) and 6 live Remote Model Context Protocol (MCP) servers for Claude Code, Cursor, Windsurf, Antigravity, Codex CLI, and Claude Desktop.**

Instead of buying bloated per-seat SaaS dashboards, equip your daily coding or financial AI agent with deterministic compliance, security, LLM verification, real estate underwriting, US 401(k) tax-credit, and Scope 3 carbon audit skills in 30 seconds.

---

## 30-Second Quickstart

### 1. Install All 9 Skills Into Your AI Agent

**macOS / Linux (Claude Code, Cursor, Windsurf):**
```bash
git clone https://github.com/GhazwanAlemara/sovereign-agent-skills.git
bash sovereign-agent-skills/install.sh auto
```

**Windows PowerShell:**
```powershell
git clone https://github.com/GhazwanAlemara/sovereign-agent-skills.git
powershell -ExecutionPolicy Bypass -File .\sovereign-agent-skills\install.ps1 auto
```

*(Pass `claude`, `cursor`, `windsurf`, or `antigravity` instead of `auto` to install into a single agent harness without overwriting any existing skills.)*

### 2. Wire the 6 Live Remote MCP Servers (`.mcp.json`)
Copy [`mcp.json`](mcp.json) (or [`.mcp.json`](.mcp.json)) into your repository root or MCP client config, and claim your free Community API keys in 5 seconds:
- **EU Compliance & Customs:** [`https://datacastle.eu/open`](https://datacastle.eu/open) (`DATACASTLE_API_KEY`)
- **MCP Firewall & Cost Caps:** [`https://supernova.cool/open`](https://supernova.cool/open) (`SUPERNOVA_API_KEY`) & [`https://cyberagents.app/open`](https://cyberagents.app/open) (`CYBERAGENTS_API_KEY`)
- **Open-Weight LLM Surgery & CI:** [`https://wsphub.dev/open`](https://wsphub.dev/open)
- **Commercial Real Estate Underwriting:** [`https://credominion.com`](https://credominion.com) (`CRE_DOMINION_API_KEY`)
- **Zero-PII US 401(k) SECURE 2.0 & Tax Credits:** [`https://erisaledger.com`](https://erisaledger.com) (`ERISALEDGER_API_KEY`)
- **Scope 3 Carbon & UN CER Offsets:** [`https://www.gn0e.com`](https://www.gn0e.com) (`GN0E_API_KEY`)

---

## Skill Catalog (9 Vertical B2B Skills)

| Skill Name | Domain & Platform | Local / Free Capability | Remote MCP & Paid Upgrade Bridge |
| :--- | :--- | :--- | :--- |
| [`eu-ai-act-codebase-auditor`](skills/eu-ai-act-codebase-auditor/SKILL.md) | EU AI Act (`DataCastle`) | Scans code for LLM/HR/biometric Annex III triggers via `datacastle-open` | Cloud SHA-256 auditor seal, Annex IV dossier & PDF certificates at [`datacastle.eu/open`](https://datacastle.eu/open) |
| [`eu-customs-3way-reconciler`](skills/eu-customs-3way-reconciler/SKILL.md) | EU Customs & TARIC (`DataCastle`) | Reconciles Invoice vs Packing List vs CMR + 8/10-digit TARIC check offline | Cloud OCR PDF extraction & live EU duty lookup via `datacastle` MCP |
| [`gdpr-subprocessor-dpa-scanner`](skills/gdpr-subprocessor-dpa-scanner/SKILL.md) | GDPR Art. 28 (`DataCastle`) | Discovers third-party SDKs/subprocessors & data-residency gaps in code | Live Trust Center & continuous vendor monitoring at [`datacastle.eu/open`](https://datacastle.eu/open) |
| [`mcp-security-hardening-audit`](skills/mcp-security-hardening-audit/SKILL.md) | Agent Security (`Supernova` + `CyberAgents`) | Audits `mcp.json` & payloads in `<5ms` via `supernova-shield` | Deep injection defense & `$5` free credits at [`supernova.cool/open`](https://supernova.cool/open) |
| [`llm-cost-choke-architect`](skills/llm-cost-choke-architect/SKILL.md) | AI FinOps (`Supernova`) | Finds missing `max_tokens`, loop caps, & short retry timeouts in code | 60-RPM hardware choke, idempotency & org spend limits via `supernova` |
| [`llm-defect-doctor`](skills/llm-defect-doctor/SKILL.md) | Open-Weight LLMs (`WSPHub`) | Scans Hugging Face / local weights for stop-token & reasoning loop bugs | Signed `.wsp v2.1` patches, CI gate & custom surgery at [`wsphub.dev/open`](https://wsphub.dev/open) |
| [`cre-lease-and-cam-auditor`](skills/cre-lease-and-cam-auditor/SKILL.md) | Commercial Real Estate (`CRE-Dominion`) | Extracts lease clauses, CAM caps & underwriting terms via agent workflow | Live `cre_abstract_lease`, `cre_audit_cam_expenses`, `cre_underwrite_retirement_exit` MCP tools |
| [`secure2-401k-and-8881-auditor`](skills/secure2-401k-and-8881-auditor/SKILL.md) | US 401(k) & Tax Credits (`ErisaLedger`) | Scrubs employee SSNs/names locally before analysis | Zero-PII Form 8881 credits, 2026 Roth Catch-Up & signed CPA PDFs at [`erisaledger.com`](https://erisaledger.com) |
| [`scope3-cloud-logistics-carbon`](skills/scope3-cloud-logistics-carbon/SKILL.md) | Carbon Accounting (`gn0e`) | Inventories cloud VMs & freight routes locally | Live `gn0e` MCP calculations + institutional UN CER offset retirement |

---

## Companion Open-Source CLI Repositories

- [`GhazwanAlemara/datacastle-open`](https://github.com/GhazwanAlemara/datacastle-open) — Python CLI & Docker self-hosted EU customs/compliance container (Apache-2.0)
- [`GhazwanAlemara/supernova-shield`](https://github.com/GhazwanAlemara/supernova-shield) — Zero-dependency `<5ms` Node.js MCP firewall & spend-cap proxy (Apache-2.0)
- [`GhazwanAlemara/wsphub`](https://github.com/GhazwanAlemara/wsphub) — `.wsp v2.1` Copy-on-Write Safetensors patch & Ed25519 verification CLI (Apache-2.0)
- [`GhazwanAlemara/wsp-ci-action`](https://github.com/GhazwanAlemara/wsp-ci-action) — GitHub Action for open-weight LLM regression gating (Apache-2.0)

## License

MIT License — see [LICENSE](LICENSE).
