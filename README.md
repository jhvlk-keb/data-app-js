# 9.3 — Input Mapping: no .input key in config.json

**Expected:** Input mapping step entirely skipped.
App starts normally without any data loading.

## Why
jq `-e '.input | ...'` returns false/null when `.input` key is absent.
No env vars (KBC_TOKEN, SANDBOX_ID, DATA_LOADER_API_URL) required.

See `test-config.json` for the expected platform config.
