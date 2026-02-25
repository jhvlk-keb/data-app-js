# 9.1 — Input Mapping: valid config with tables + env vars

**Expected:** Data Loader health-check polled → POST sent → waits for completion
→ data loaded to /data/in/tables/ before app starts.

## Required env vars (set in Keboola platform)
- `KBC_TOKEN` — Storage API token
- `SANDBOX_ID` — sandbox identifier
- `DATA_LOADER_API_URL` — Data Loader API base URL

## Flow
1. entrypoint detects non-empty `.input.tables`
2. Waits for Data Loader health-check (GET .../health-check → 200)
3. POSTs input config → expects HTTP 201
4. setup.sh runs (uv sync)
5. App starts; /data/in/tables/titanicdemodata.csv available

See `test-config.json` for the expected platform config.
