const express = require('express');
const mongoose = require('mongoose');
const authRouter = require('./routes/auth');

const app = express();
const PORT = 3000;

const DB ="mongodb+srv://natan_muler:12309Piv@cluster0.c7vf6k6.mongodb.net/"
// Middleware
app.use(express.json());
app.use(authRouter);

// Connect to MongoDB
mongoose.connect(DB)
  .then(() => {
    console.log('✅ MongoDB connected successfully');
  })
  .catch((e) => {
    console.log('❌ MongoDB connection error:', e.message);
  });

// Start server
app.listen(PORT, () => {
  console.log('🚀 Server running on port ' + PORT);
});
