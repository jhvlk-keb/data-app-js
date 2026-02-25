# 8.4 — pip_repositories: credentials in token format

**Expected:** Token injected into URL → `https://mytoken123@pypi.example.com/simple/`

## Generated uv.toml
```toml
[[index]]
url = "https://mytoken123@pypi.example.com/simple/"
```

## Platform config
Set `#credentials` to a single token string (no colon). The platform injects it
as `token@hostname` in the URL.

See `test-config.json` for the expected platform config structure.
