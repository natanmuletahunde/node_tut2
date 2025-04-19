const express = require('express')

const authRouter = express.Router();

authRouter.post('/api/signup' , ()=>{
   const {name , email , password } = req.body; 

})

module.exports = authRouter;