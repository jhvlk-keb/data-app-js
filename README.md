# 8.6 — pip_repositories: multiple repos, mixed trusted/untrusted

**Expected:** All three indexes written to uv.toml; only the trusted host
appears in `allow-insecure-host`.

## Generated uv.toml
```toml
allow-insecure-host = ["internal.example.com"]

[[index]]
url = "http://user:pass@internal.example.com/simple/"

[[index]]
url = "https://token123@pypi.example.com/simple/"

[[index]]
url = "https://pypi.org/simple/"
```

See `test-config.json` for the expected platform config.
