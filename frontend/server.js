const express = require('express');
const app = express();
const PORT = parseInt(process.env.PORT || '3000');

app.get('/', (req, res) => res.send(`<!DOCTYPE html>
<html><head><title>Multi-server App</title></head>
<body>
  <h1>Multi-server Data App</h1>
  <p>Frontend: Node.js (Express) | Backend: Python (FastAPI)</p>
  <div id="status">Loading...</div>
  <script>
    fetch('/api/health').then(r => r.json()).then(d => {
      document.getElementById('status').textContent = 'Backend: ' + JSON.stringify(d);
    });
  </script>
</body></html>`));

app.listen(PORT, '127.0.0.1', () => console.log(`Frontend on port ${PORT}`));
