# 8.9 — pip_repositories: actually install a package from configured index

**Expected:** `uv sync` resolves and installs `httpx` from the configured private
PyPI index (here: public PyPI used as a stand-in).

## What this tests
End-to-end flow: config.json pip_repositories → uv.toml written →
`uv sync` in setup.sh pulls `httpx==0.27.0` from the configured index URL.

## Verification
After container starts:
```
uv run python -c "import httpx; print(httpx.__version__)"
# Expected: 0.27.0
```

See `test-config.json` for the expected platform config.
