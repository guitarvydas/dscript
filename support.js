var sep = "_";
var componentPath = [];
var pidNames = [];

exports.resetNames = function () { componentPath = []; childrenNames = []; }

function cpath () { 
    let path = componentPath.join (sep);
    if (path) {
	return path + sep;
    } else {
	return "";
    }
}	

exports.pushComponentName = function (s) {
    componentPath.push (mangleComponentName (s));
    return "";
}

exports.popComponentName = function () {
    componentPath.pop ();
    return "";
}

exports.panic_not_allowed_in_bash = function () {
    console.error ("*** ERROR: copying to multiple receivers not available in BASH");
    throw "ERROR";
}

exports.manglePortName = function (s) {
    return s.replace (/\$/g, sep);
}

exports.trimCode = function (s) {
    //return s.trim ();
    return s;
}

function mangleComponentName (s) {
    return s.replace (/ /g, sep).replace (/\//g, sep).replace (/\$/g, sep);
}

exports.mangleName = function (s) {
    return mangleComponentName (s);
}

exports.listPids = function () {
    let result = "";
    pidNames.forEach (n => {
	result += "$" + n + " ";
    });
    return result;
}

exports.pushPidName = function (n) {
    pidNames.push (n);
    return "";
}

exports.debug = function () {
    console.error (componentPath);
    return "";
}
