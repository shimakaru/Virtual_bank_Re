'use strict'


const port=3000,
      express=require("express"),
      app=express(),
      layouts = require('express-ejs-layouts');
const router=require("./routes/index");

app.listen(3000)