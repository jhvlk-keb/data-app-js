# 8.8 — pip_repositories: verify uv.toml file permissions (0600)

**Expected:** `~/.config/uv/uv.toml` is created with `rw-------` (0600) permissions
to protect embedded credentials.

## Verification
After container starts, check:
```
stat ~/.config/uv/uv.toml
# Expected: Access: (0600/-rw-------)
```

This is enforced by `setup_uv_config.py` via `os.chmod(output_path, 0o600)`.

See `test-config.json` for the expected platform config.
