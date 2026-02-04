import express from "express";

const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.json("🚀 Hello from Node.js + Docker 1.5!");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
