const http = require("http");
const express = require('express');
const WebSocket = require("ws");

const port = process.env.PORT || 8080;
const server = http.createServer(express);
const wss = new WebSocket.Server({server});

wss.on("connection", function connection(ws) {
    ws.on("message", function incoming(data) {
        wss.clients.forEach(function each(client){
            if(client !== ws && client.readyState === WebSocket.OPEN) {
                client.send(data);
            }
        })
    })
})

server.listen(port, function() {
    console.log(`server is listening on ${port}`)
})