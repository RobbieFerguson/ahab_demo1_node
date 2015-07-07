var fs = require('fs')
var request = require('request')
var path = require('path');

request.get('http://www.myapifilms.com/imdb/inTheaters', function (err, response) {
  process.stdout.write("THIS IS THE DIRNAME IN THE CONTAINER", __dirname);
  fs.writeFile(__dirname + '/ahab/output.json', response.body, function (err) {
    fs.createReadStream(__dirname + '/ahab/output.json').pipe(process.stdout);
  });
});
