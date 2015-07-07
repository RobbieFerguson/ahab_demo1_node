var fs = require('fs')
var request = require('request')
var path = require('path');

<<<<<<< HEAD
console.log('testing!!!!');

request.get('http://www.myapifilms.com/imdb/inTheaters')
.pipe(fs.createWriteStream(path.join(__dirname, './ahab/output.json')))
.on('finish',function(){
  console.log('finished writing')
})
||||||| merged common ancestors

request.get('http://www.myapifilms.com/imdb/inTheaters')
.pipe(fs.createWriteStream('./ahab/output.json'))
.on('finish',function(){
  console.log('finished writing')
})
=======
request.get('http://www.myapifilms.com/imdb/inTheaters', function (err, response) {
  fs.writeFile(__dirname + '/ahab/output.json', response.body, function (err) {
    fs.createReadStream(__dirname + '/ahab/output.json').pipe(process.stdout);
  });
});
>>>>>>> mbarzizza-bugfixes
