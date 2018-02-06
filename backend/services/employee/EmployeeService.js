//var QueryServiceImpl = require('../RESTfulservices/QueryServiceImpl');
var Promise = require("promise");
var ConnectionPool = require('../../db/ConnectionPool');
var connection = ConnectionPool.getConnection();

////search by name
exports.searchByName = function (empName) {
    return new Promise(function (resolve, reject) {
        connection.query("select * from employee where Emp_Name like '%" + empName + "%'", function (err, rows, fields) {
            if (err) {
                return reject(err);
            } else {
                console.log("rsolve rows" + rows[0].Emp_Name)
                return resolve(rows[0]);
            }

        }); // query
    });
}

//delete single record 

exports.delete = function (empId) {

    return new Promise(function (resolve, reject) {

        connection.query("delete from employee where Emp_Id='" + empId + "'", function (err, rows, fields) {

            if (err) {
                return reject(err);
            } else {
                // console.log("rsolve rows" + rows[0].Emp_Name)
                return resolve(rows[0]);
            }

        }); // query
    });
}

//update single records

exports.update = function (req) {

    return new Promise(function (resolve, reject) {
        var input = JSON.parse(JSON.stringify(req.body));
        var employee = {
            "empCode": req.body.empCode,
            "empName": req.body.empName,
            "empType": req.body.empType,
            "empRole": req.body.empRole
        }
        console.log("Emp_Id  " + employee.empCode)
        var sql = "UPDATE employees SET ? WHERE empCode ='" + employee.empCode + "'";
        connection.query(sql, employee, function (err, rows, fields) {

            if (err) {
                return reject(err);
            } else {
                return resolve(rows[0]);
            }

        }); // query
    });
}



//Add single record
exports.add = function (req) {
    return new Promise(function (resolve, reject) {
        var input = JSON.parse(JSON.stringify(req.body));
       // var expkeyskill=KeySkills.toString();
        var employee = {
            "empCode": req.body.empCode,
            "empName": req.body.empName,
            "empType": req.body.empType,
            "empRole": req.body.empRole,
            "empExpYear": req.body.empExpYear,
            "joinDate": req.body.joinDate,
            "mobile": req.body.mobile,
            "email": req.body.email,
            "gender": req.body.gender,
            "KeySkills": req.body.KeySkills.toString(),
        }
        console.log("INSERT INTO employees set ?"); 

        connection.query("INSERT INTO employees set ?", employee, function (err, rows, fields) {
            if (err) {
                return reject(err);
            } else {
                // console.log("rsolve rows" + rows[0].Emp_Name)
                return resolve(rows);
            }

        }); // query
    }); // Promise
} // getDepartments

//search all records

exports.search = function () {
    return new Promise(function (resolve, reject) {

        connection.query("select * from employees", function (err, rows, fields) {

            if (err) {
                return reject(err);
            } else {
                // console.log("rsolve rows" + rows[0].Emp_Name)
                return resolve(rows);
            }

        }); // query
    }); // Promise
} // getDepartments






//search single records by empId

exports.searchById = function (empId) {

    return new Promise(function (resolve, reject) {

        connection.query("select * from employees where empId='" + empId + "'", function (err, rows, fields) {

            if (err) {
                return reject(err);
            } else {
                // console.log("rsolve rows" + rows[0].Emp_Name)
                return resolve(rows[0]);
            }

        }); // query
    });
}



