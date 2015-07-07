var fs = require('fs')
var request = require('request')
var path = require('path');

console.log('testing!!!!');

request.get('http://www.myapifilms.com/imdb/inTheaters')
.pipe(fs.createWriteStream(path.join(__dirname, './ahab/output.json')))
.on('finish',function(){
  console.log('finished writing')
})
