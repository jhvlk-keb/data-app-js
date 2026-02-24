const express = require('express');
const app = express();
const PORT = parseInt(process.env.PORT || '8050');

app.get('/health', (req, res) => res.json({ status: 'ok', service: 'node' }));
app.get('/', (req, res) => res.send('<h1>Node.js Data App</h1><p>Running via Express on port ' + PORT + '</p>'));

app.listen(PORT, '127.0.0.1', () => console.log(`Server running on port ${PORT}`));
