var exec = require("child_process").exec;
setInterval(function () {
    console.log('Executing...');
    exec('php job-js.php', function (error, stdout, stderr) {
        console.log(stdout);
    });
}, 5000); // run every 5 seconds
