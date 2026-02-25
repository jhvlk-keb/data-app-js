# 8.7 — pip_repositories: repo config missing url key

**Expected:** Warning logged for the invalid repo; since ALL repos are invalid,
container fails with exit 1.

## Expected output
```
[WARNING] Invalid repository configuration, missing key 'url': {'name': 'bad-repo', 'add_trusted_host': False}
[ERROR] All repository configurations are invalid
```

See `test-config.json` for the expected platform config.
