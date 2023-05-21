const os = require('os');
const ifaces = os.networkInterfaces();
const http = require('http');

// Znajdowanie adresu IP sieciowego
let ipAddress = '';
Object.keys(ifaces).forEach(function (ifname) {
  let alias = 0;

  ifaces[ifname].forEach(function (iface) {
    if ('IPv4' !== iface.family || iface.internal !== false) {
      // Pomijanie wewnętrznych oraz nie-IPv4 adresów
      return;
    }

    if (alias >= 1) {
      // Przydzielanie kolejnych aliasów do danego interfejsu
      ipAddress += ifname + ':' + alias + ' ' + iface.address + '\n';
    } else {
      // Bez aliasów
      ipAddress += ifname + ' ' + iface.address + '\n';
    }
    ++alias;
  });
});

console.log('Adresy IP:', ipAddress);

// Tworzenie serwera HTTP
const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello World!');
});

// Włączanie serwera na porcie 3000
server.listen(3000, () => {
  console.log('Serwer działa na porcie 3000');
});
