# 12.1 — Security: container runs as app user (UID 1000)

**Expected:** `whoami` returns `app`, UID = 1000.

## Verification
Inside running container:
```
whoami          # → app
id -u           # → 1000
```

## Implementation
The base image (`quay.io/keboola/data-app-python-js`) sets USER to `app` (UID 1000).
No root privileges are available at runtime.
