const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/healthz', (req, res) => res.json({ ok: true }));
app.get('/', (req, res) => {
  res.json({
    service: "multicloud-app",
    message: "Hello from a portable app running on any Kubernetes cluster!",
    timestamp: new Date().toISOString()
  });
});

app.listen(port, () => console.log(`App listening on ${port}`));
