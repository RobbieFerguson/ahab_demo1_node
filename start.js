var fs = require('fs')
var request = require('request')

request.get('http://www.myapifilms.com/imdb/inTheaters', function (err, response) {
  fs.writeFile(__dirname + '/ahab/output.json', response.body, function (err) {
    fs.createReadStream(__dirname + '/ahab/output.json').pipe(process.stdout);
  });
});
