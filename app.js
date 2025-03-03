// const http = require('http'); // or use "import http from 'http';" if using ES modules
// const server = http.createServer((req, res) => {
//     res.setHeader('Content-Type', 'text/html'); // Set response type

//     if (req.url === '/') {
//         res.end('Welcome to the home ');
//     } else if (req.url === '/about') {
//         res.end('Here is our short history');
//     } else {
//         res.end(`
//             <h1>Oops!</h1>
//             <p>There is no page here
//             <a href="/about">back to home</a>   
//             </p>
//         `);
//     }
// });

// // Start the server on port 5000
// server.listen(5000, () => {
//     console.log('Server is running on port 5000...');
// });


const _ = require('lodash');

const items = [1,[2,[3,[4]]]]
const newitems = _.flatMapDeep(items)
console.log(newitems);