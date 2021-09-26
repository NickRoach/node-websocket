# node-websocket
A simple instant-messaging demo using a websocket server written in Node

This is based on a tutorial, but made a few tweaks to make it work deployed on CloudRun
https://www.youtube.com/watch?v=RL_E56NPSN0&t=724s

I made a dockerfile and modified the server code to leave the port as an environment variable so that it can be assigned later. I deployed the containerized application on CloudRun using a shell script to automate gcloud operations. With the websocket server deployed and live, I modified the frontend page to connect to its URL. I also had to use FileReader() to parse the blobs returned by the server into text to be displayed.
