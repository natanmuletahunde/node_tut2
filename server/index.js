import express from 'express'
import { authRouter } from './routes/auth.js';

 const PORT = 3000;
 const app = express();
 
app.use(authRouter)
 app.listen(PORT, ()=>{
    console.log(`connected at port ${PORT}`)
 })