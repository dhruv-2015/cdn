const fs = require('fs');
const filepath = ('/etc/flussonic/flussonic.conf')
const PORT = process.env.PORT
const fileData = `# Global settings:\x0ahttp ${PORT};\x0artmp 1935;\x0a\x0aedit_auth dhruv dhruv@123;\x0a\x0a# DVRs:\x0a\x0a# Remote sources:\x0a\x0a# Balancer:\x0a\x0a# Stream templates:\x0a\x0a# Ingest streams:\x0a\x0a\x0a# Publish locations:\x0a\x0a# Disk file caches:\x0a\x0a# VOD locations:\x0a\x0a# DVB cards:\x0a\x0a# Plugins:\x0a\x0a`
fs["writeFile"](filepath, fileData, (error) => {
  console.log(filepath);
  console.log("done");
  if (error){
    console["log"](error);
    console.log(filepath);
  }
});
