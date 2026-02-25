# 8.1 — pip_repositories not in config.json

**Expected:** uv config step silently skipped, app starts normally.

## Platform config
Configure the data app WITHOUT any private PyPI repositories.
The `pip_repositories` key should be absent from config.json.

See `test-config.json` for the expected platform config structure.
