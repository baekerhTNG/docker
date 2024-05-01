import express from 'express';
import path from 'path';

const app = express();
const PORT = 3000;

// List of files to choose from
const files = [
  path.join(__dirname, 'file1.html'),
  path.join(__dirname, 'file2.html')
];

app.get('/random-file', (req, res) => {
  // Randomly select a file
  const fileIndex = Math.floor(Math.random() * files.length);
  const selectedFile = files[fileIndex];

  // Send the selected file
  res.sendFile(selectedFile);
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
