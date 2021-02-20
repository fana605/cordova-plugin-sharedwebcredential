var exec = require('cordova/exec');

var PLUGIN_NAME = 'Sharedwebcredential';

var Sharedwebcredential = {

    save: function (success, error, server, username, password) {
        exec(success, error, PLUGIN_NAME, "save", [server, username, password]);
    },

};

module.exports = Sharedwebcredential;