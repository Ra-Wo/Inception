var express = require('express');
var app = express();
const path = require('path')

app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

app.listen(8080, function () {
    console.log('Example app listening on port 8080!');
});