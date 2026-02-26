# 9.5 — Input Mapping: Data Loader POST returns non-201 HTTP code

**Expected:** Container fails immediately with:
`[ERROR] Data loading failed (HTTP XXX)`

## How to trigger
Requires a Data Loader service that responds to the health-check (returns 200)
but returns a non-201 status code on the POST to `.../input`.

## Flow
1. Health-check succeeds (200 returned)
2. POST sent to data-loader-api/input
3. Response HTTP code ≠ 201 (e.g. 400, 500, 403)
4. Container exits 1: `[ERROR] Data loading failed (HTTP 400)`

See `test-config.json` for the expected platform config.
