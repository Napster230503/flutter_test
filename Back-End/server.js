const express = require('express');
const app = express();

app.get('/api/data', (req, res) => {
  const data = [
    { id: 1, title: 'Data 1', description: 'Description 1' },
    { id: 2, title: 'Data 2', description: 'Description 2' },
  ];
  res.json(data);
});

app.listen(3000, () => {
  console.log('Server started on port 3000');
});

