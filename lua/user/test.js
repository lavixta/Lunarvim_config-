// call github api to get the current user
// and display the name of the user in the console
// to run this script, type the following in the console:
// require("user/test.js")
var github = require("github");
var user = github.getUser();
console.log(user.name);
