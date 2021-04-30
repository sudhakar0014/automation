var http = require('http');
var handleRequest = function(request, response){
    console.log("rx request for url:" + request.url);
    response.writeHead(200)
    response.end('Hello World: ' +  process.env.HOSTNAME);
};

var www = http.createServer(handleRequest);
www.listen(8080);
