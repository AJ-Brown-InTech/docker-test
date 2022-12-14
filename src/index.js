
const express = require('express')
const app = express()

const httpsServer = require('http').createServer(app)
 .listen(3030, ()=> (console.log(new Date + `\n[HTTPS]: Server is listening on port 3030`)))