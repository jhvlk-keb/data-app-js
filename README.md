# 8.2 — pip_repositories: single repo, URL only

**Expected:** `~/.config/uv/uv.toml` written with a single `[[index]]` entry, no credentials injected.

## Generated uv.toml
```toml
[[index]]
url = "https://pypi.org/simple/"
```

## Platform config
Add one private PyPI repository with only a URL (no credentials, add_trusted_host = false).

See `test-config.json` for the expected platform config structure.
