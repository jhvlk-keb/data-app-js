# 9.4 — Input Mapping: Data Loader not available (300s timeout)

**Expected:** Container fails after 300 seconds with:
`Data Loader failed to start in 300 seconds`

## How to trigger
Set `DATA_LOADER_API_URL` to an unreachable host (e.g. `http://127.0.0.1:19999`)
so the health-check never returns 200.

## Flow
1. `.input.tables` is non-empty → Data Loader path entered
2. wait_for_data_loader polls every 5s for up to 300s
3. Health-check never returns 200
4. Container exits 1: "Data Loader failed to start in 300 seconds"

See `test-config.json` for the expected platform config.
