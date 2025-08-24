// very tiny "test"
const http = require('http');
http.get('http://localhost:8080/healthz', (res) => {
  if (res.statusCode === 200) {
    console.log('OK');
  } else {
    console.error('FAIL');
    process.exit(1);
  }
}).on('error', () => process.exit(1));
