const http = require('http')
const server = http.createServer((req, res) => {
    console.log('New connection')
    res.end('Hello World - mit ci cd')
})
const PORT = process.env.PORT || 8080
server.listen(PORT, () => console.log('Hello world listening on port', PORT);
)
