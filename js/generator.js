function getURLParameter(name) {
    return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [, ""])[1].replace(/\+/g, '%20')) || null;
}

function GenerateLink() {
    var linkUrl = window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port : '');;
    var tn = document.getElementById("themename").value;
    linkUrl += "/?tn=" + encodeURIComponent(tn);
    var lt = document.getElementById("logotooltip").value;
    linkUrl += "&to=" + encodeURIComponent(lt);

    var themeTextboxes = ["navbar", "navbarshelf", "navheader", "uigloballink", "uiselectedlink", "uihoverlink", "uiprocesscontrol", "uidefaultentity", "uicustomentity", "uicontrolshade", "uicontrolborder"];
    var parameters = ["nb", "ns", "hc", "gl", "sl", "hl", "pc", "de", "dc", "cs", "cb"];
    for (var x = 0; x < themeTextboxes.length; x++) {
        var fieldValue = document.getElementById(themeTextboxes[x] + "_hex").value;
        fieldValue = fieldValue.replace("#", "");
        linkUrl += "&" + parameters[x] + "=" + encodeURIComponent(fieldValue);
    }
    document.getElementById("linkurl").href = linkUrl;
    var linkEmail = "mailto:?subject=CRM Theme&body=Preview Link: " + encodeURIComponent(linkUrl);
    document.getElementById("linkemail").href = linkEmail;
}


function setBorder(className, color) {
    var elements = document.getElementsByClassName(className);
    for (var j = 0; j < elements.length; j++) { elements[j].style.borderColor = '#' + color; }
    GenerateLink();
}

function setBackground(className, color) {
    var elements = document.getElementsByClassName(className);
    for (var j = 0; j < elements.length; j++) { elements[j].style.backgroundColor = '#' + color; }
    GenerateLink();
}

function setColor(className, color) {
    var elements = document.getElementsByClassName(className);
    for (var j = 0; j < elements.length; j++) { elements[j].style.color = '#' + color; }
    GenerateLink();
}

function updateInfo(color) {
    if (color.valueElement == "uicontrolborder_hex") { setBorder("uicontrolborder_hex_preview", color); return; }
    if (color.valueElement == "navheader_hex") { setColor("navheader_hex_preview", color); return; }
    if (color.valueElement == "uigloballink_hex") { setColor("uigloballink_hex_preview", color); return; }
    setBackground(color.valueElement + "_preview", color);
}

function selectAllText(textbox) {
    if (textbox.value == "--") { textbox.value = ""; }
    textbox.setSelectionRange(0, textbox.value.length);
}

function checkEmpty(textbox) {
    if (textbox.value == "") { textbox.value = "--"; }
    GenerateLink();
}

function DefaultTheme() {
    document.getElementById("themename").value = "My New Theme";
    document.getElementById("logotooltip").value = "Microsoft Dynamics CRM";
    var themeColors = ["002050", "DFE2E8", "1160B7", "1160B7", "B1D6F0", "D7EBF9", "0755BE", "001CA5", "006551", "F3F1F1", "CCCCCC"];
    ApplyTheme(themeColors, true);
}

function BackToDefault() {
    document.getElementById("logotooltip").value = "Microsoft Dynamics CRM";
    var defaults = ["002050", "DFE2E8", "1160B7", "1160B7", "B1D6F0", "D7EBF9", "0755BE", "001CA5", "006551", "F3F1F1", "CCCCCC"];
    ApplyTheme(defaults, false);
}

function BackToDefault2016() {
    document.getElementById("logotooltip").value = "Microsoft Dynamics CRM";
    var defaults = ["002050", "DFE2E8", "1160B7", "1160B7", "B1D6F0", "D7EBF9", "D24726", "001CA5", "006551", "F3F1F1", "CCCCCC"];
    ApplyTheme(defaults, false);
}

function GetRandom() {
    var randoms = new Array();
    for (var k = 0; k < 11; k++) {
        var newColor = Math.floor((Math.random() * 16777215));
        randoms.push(newColor.toString(16).toUpperCase());
    }
    ApplyTheme(randoms, false);
}

function ApplyTheme(themeColors, firstCall) {
    var themeTextboxes = ["navbar", "navbarshelf", "navheader", "uigloballink", "uiselectedlink", "uihoverlink", "uiprocesscontrol", "uidefaultentity", "uicustomentity", "uicontrolshade", "uicontrolborder"];
    for (var i = 0; i < themeTextboxes.length; i++) {
        if (firstCall == true) { document.getElementById(themeTextboxes[i] + "_hex").value = "#" + themeColors[i]; }
        else { document.getElementById(themeTextboxes[i] + "_color").color.fromString(themeColors[i]); }
        var applyBackground = true;
        if (themeTextboxes[i] + "_hex" == "uicontrolborder_hex") { setBorder("uicontrolborder_hex_preview", themeColors[i]); applyBackground = false; }
        if (themeTextboxes[i] + "_hex" == "navheader_hex") { setColor("navheader_hex_preview", themeColors[i]); applyBackground = false; }
        if (themeTextboxes[i] + "_hex" == "uigloballink_hex") { setColor("uigloballink_hex_preview", themeColors[i]); applyBackground = false; }
        if (applyBackground == true) { setBackground(themeTextboxes[i] + "_hex" + "_preview", themeColors[i]); }
    }
}