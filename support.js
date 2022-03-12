var componentPath = [];

exports.resetNames = function () { componentPath = []; }

function cpath () { 
    let path = componentPath.join ('_');
    if (path) {
	return path + "_";
    } else {
	return "";
    }
}	

exports.mangleChildName = function (s) {
    return cpath () + s.replace (/ /g, "_").replace (/\//g, "__").replace (/\$/g,"___");
}

exports.pushComponentName = function (s) {
    componentPath.push (s);
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
    return s.replace (/\$/g, "___");
}
