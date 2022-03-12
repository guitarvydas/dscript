var componentPath = [];
function cpath () { return componentPath.join ('-'); };

exports.mangleChildName = function (s) {
    return cpath () + "-" + s.replace (/ /g, "-").replace (/\//g, "_");
}

exports.pushComponentName = function (s) {
    componentPath.push (s);
    return "";
}

exports.popComponentName = function () {
    componentPath.pop ();
    return "";
}

