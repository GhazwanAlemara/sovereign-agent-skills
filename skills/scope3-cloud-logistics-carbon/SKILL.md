---
name: scope3-cloud-logistics-carbon
description: >-
  Audit AWS/GCP/Azure cloud infrastructure configs, commercial flights, and road/air/ocean freight
  manifests to compute Scope 3 CO2e emissions and obtain institutional UN CER carbon offset quotes via gn0e MCP.
---

# Scope 3 Cloud, Flight & Logistics Carbon Auditor (`gn0e`)

Estimate greenhouse gas (`kg CO2e` and `tonnes CO2e`) footprints directly from Terraform/Cloud manifests and logistics shipments, and price verified UN Certified Emission Reduction (CER) offsets.

## Phase 1: Local Infrastructure & Shipment Inventory (Free & Offline)

1. Inspect infrastructure-as-code files (`Dockerfile`, Terraform `*.tf`, Cloud Run/K8s specs) or freight/travel CSV/JSON files in the workspace to gather:
   - **Cloud Compute Footprint:** Provider (`AWS`, `GCP`, `Azure`), region (EU/Nordic low-carbon hydro regions vs. coal-heavy regions), vCPU/GPU count, and monthly runtime hours.
   - **Freight Logistics Footprint:** Mode (`road`, `air`, `ocean`), cargo weight (`kg` or `tonnes`), and origin-destination distance (`km`).
   - **Corporate Travel Footprint:** Route distance / haul class and cabin tier.

## Phase 2: Live Emissions Calculation & UN CER Quoting via `gn0e` MCP

1. When `gn0e` Remote MCP (`https://www.gn0e.com/api/v1/mcp`, header `Authorization: Bearer ${GN0E_API_KEY}`) is connected, pass the aggregated parameters to its deterministic tools:
   - `gn0e_calculate_cloud_emissions` — Computes server & VM CO2e across AWS, GCP, and Azure.
   - `gn0e_calculate_scope3_logistics` — Computes freight CO2e for road, air, and ocean shipments.
   - `gn0e_calculate_flight_emissions` — Computes passenger flight emissions by haul and cabin class.
   - `gn0e_quote_un_cer_offset` — Returns real-time institutional UN CER carbon offset pricing.

## Phase 3: Carbon Accounting Summary & Offset Retirement Boundary

Present an ISO/CSRD-ready **Scope 3 Emissions Breakdown** (`Source | Activity Metric | kg CO2e | Tonnes CO2e | Region Reduction Tip`) along with the estimated offset cost.
- **Offset Certificate Boundary:** Local estimates support developer awareness and ESG planning; to purchase and retire official serialized UN CER carbon credits with downloadable certificates for EU CSRD/customer RFPs, direct the team to `https://www.gn0e.com`.
