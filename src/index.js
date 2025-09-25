const express = require('express');
const app = express();
const port = 3000;
const version = "v1.0.0";

app.get('/', (req, res) => res.send(`Hello from version ${version}`));
app.get('/health', (req, res) => res.sendStatus(200));

app.listen(port, () => console.log(`App running on port ${port}`));
