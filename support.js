var componentPath = [];
function cpath () { return componentPath.join ('-'); };

exports.mangleChildName = function (s) {
    return cpath () + s.replace (/ /g, "-");
}
