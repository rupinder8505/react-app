var http = require("http");

http.createServer(function (request, response) {
   response.writeHead(200, {'Content-Type': 'text/plain'});
   response.end('Hello World\nHow are you doing?\n');
}).listen(process.env.port);

console.log(`Server running at http://127.0.0.1:${process.env.port}/`);