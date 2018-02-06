var express = require('express');
var http = require('http');

var app = express();
var server = http.createServer(app);


// var http = require('http');
var EmployeeController = require('../controller/EmployeeController');


app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});
var parser = require('body-parser')

app.use(parser.json()); // support json encoded bodies
app.use(parser.urlencoded({ extended: true })); // support encoded bodies


app.route('/search/employee').get(EmployeeController.search);
app.route('/search/employee/id/:empId').get(EmployeeController.searchById);
app.route('/add/employee').post(EmployeeController.add);
app.route('/update/employee/id/:empId').post(EmployeeController.update);
app.route('/delete/employee/id/:empId').get(EmployeeController.delete);

//search by name
app.route('/search/employee/name/:empName').get(EmployeeController.searchByName);




server.listen(1336, 'localhost');
server.on('listening', function() {
    console.log('Express server started on port %s at %s', server.address().port, server.address().address);
});

/*app.listen(80, function () {
    console.log("listing port:80");
});*/