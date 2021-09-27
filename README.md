# node-websocket
A simple instant-messaging demo using a websocket server written in Node

This is based on a tutorial, but I made a few tweaks to make it work deployed on CloudRun
https://www.youtube.com/watch?v=RL_E56NPSN0&t=724s

I made a dockerfile and modified the server code to leave the port as an environment variable so that it can be assigned later. I deployed the containerized application on CloudRun using a shell script to automate gcloud operations. With the websocket server deployed and live, I modified the frontend page to connect to its URL. I also had to use FileReader() to parse the blobs returned by the server into text to be displayed.

To see the application in action, open two instances of index.html. Text submitted on one page instance will immediately appear in the message box of the other instance. 
The way it works is that when the "send message" button is pressed, the contents of the message box is sent to the web socket server. The server sends the message to all the clients connected to the server and it is displayed instantly without any need for regular polling of the server from the client side.
