# 8.5 — pip_repositories: add_trusted_host = true

**Expected:** `allow-insecure-host` added to uv.toml for HTTP/self-signed repos.

## Generated uv.toml
```toml
allow-insecure-host = ["pypi.internal.example.com"]

[[index]]
url = "http://pypi.internal.example.com/simple/"
```

## Platform config
Set `add_trusted_host: true` for an internal HTTP repository.

See `test-config.json` for the expected platform config structure.
