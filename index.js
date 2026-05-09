const http = require('http');
const server = http.createServer((req, res) => {
  res.end('服务部署成功！');
});
server.listen(8080, '0.0.0.0');