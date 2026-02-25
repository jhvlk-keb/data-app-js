# 8.3 — pip_repositories: credentials in user:pass format

**Expected:** Credentials injected into URL → `https://myuser:mypassword@pypi.example.com/simple/`

## Generated uv.toml
```toml
[[index]]
url = "https://myuser:mypassword@pypi.example.com/simple/"
```

## Platform config
Set `#credentials` to `"myuser:mypassword"` (colon-separated user:password).
The `#` prefix is Keboola's convention for encrypted/secret fields in config.json.

See `test-config.json` for the expected platform config structure.
