# 9.2 — Input Mapping: .input present but tables and files are empty arrays

**Expected:** Input mapping step silently skipped (no POST to Data Loader).
App starts normally without loading any data.

## Why
jq checks: `(.tables // [] | length > 0) or (.files // [] | length > 0)`
Both arrays are empty → condition is false → Data Loader not contacted.

See `test-config.json` for the expected platform config.
