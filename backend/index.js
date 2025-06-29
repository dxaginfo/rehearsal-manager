const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => res.send('Rehearsal Manager API'));

// More API endpoints for events, users, attendance, notifications, etc.

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`API running on port ${PORT}`));
