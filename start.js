var fs = require('fs')
var request = require('request')


request.get('http://www.myapifilms.com/imdb/inTheaters')
.pipe(fs.createWriteStream('./ahab/output.json'))
.on('finish',function(){
  console.log('finished writing')
})
