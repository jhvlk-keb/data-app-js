  set -euo pipefail

  echo "Installing dependencies..."
  cd /app
  pip install .
  echo "Setup complete."

  ---
  keboola-config/nginx/sites/app.conf

  Toto zkopíruj beze změny:

  server {
      listen 8888;

      location / {
          proxy_pass http://127.0.0.1:8050;
          proxy_set_header Host $host;
          proxy_set_header X-Real-IP $remote_addr;
      }
  }