var express = require('express')
var app = express()
var ip = require('ip')
var os = require('os')

app.get('/blue', function (req, res) {
    res.send('Hello from the Blue cluster!')
})

app.get('/blue/server/url', function (req, res) {
    res.send(req.url)
})

app.get('/blue/server/ipaddress', function (req, res) {
    res.send(ip.address())
})

app.get('/blue/server/hostname', function (req, res) {
    res.send(os.hostname())
})

app.listen(3000, function () {
    console.log('Example app listening on port 3000!')
})