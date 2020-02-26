var textboxes = document.getElementsByClassName("crmtextbox");
for (var i = 0; i < textboxes.length; i++) {
    textboxes[i].onclick = function () { selectAllText(this); };
    textboxes[i].onblur = function () { checkEmpty(this); };
}

var validUrl = true;
var patternColor = /^[0-9a-f]{6}$/i;
var parameters = ["nb", "ns", "hc", "gl", "sl", "hl", "pc", "de", "dc", "cs", "cb"];
var colors = new Array();

for (var i = 0; i < parameters.length; i++) {
    var colorParameter = getURLParameter(parameters[i]);
    colors.push(colorParameter);
    if (colorParameter == null || !patternColor.test(colorParameter)) {
        validUrl = false;
        break;
    }
}

if (validUrl == true) {
    var name = getURLParameter('tn');
    var tooltip = getURLParameter('to');
    if (name != null) { document.getElementById("themename").value = name; }
    if (tooltip != null) { document.getElementById("logotooltip").value = tooltip; }
    ApplyTheme(colors, true);
} else {
    DefaultTheme();
}
