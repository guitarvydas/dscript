var componentPath = [];
function cpath () { return componentPath.join ('_'); };

exports.mangleChildName = function (s) {
    return cpath () + "_" + s.replace (/ /g, "_").replace (/\//g, "__");
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
