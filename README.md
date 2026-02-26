# 10.1 — Token from File: STORAGE_API_TOKEN_PATH not set

**Expected:** `load_token_from_file` returns immediately (no-op).
KBC_TOKEN remains unchanged (set by platform directly if provided).

## Behavior
If `STORAGE_API_TOKEN_PATH` is empty or unset, the function exits 0 silently.
No file is read, KBC_TOKEN is not modified.

This is the default/normal mode when using direct token injection.
