const http = require('http');

const server = http.createServer((req, res) => {
    if(err){
        console.log(err);
    }
    console.log(req);
    res.end('Hello World');
});

console.log('Server is running on port 3000');
server.listen(5000);