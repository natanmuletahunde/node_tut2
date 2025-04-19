import express from 'express'
import { authRouter } from './routes/auth.js';
import mongoose from 'mongoose';

 const PORT = 3000;
 const app = express();
 const DB = "mongodb+srv://natan_Piv123:pivnati123%23@cluster0.fepwjp9.mongodb.net"

 
// connection of the db 

mongoose.connect(DB)
  .then(() => {
    console.log('Connection successful');
  })
  .catch((e) => {
    console.log('Failed to connect:', e); // <-- show real error
  });

app.use(authRouter)
 app.listen(PORT, ()=>{
    console.log(`connected at port ${PORT}`)
 })