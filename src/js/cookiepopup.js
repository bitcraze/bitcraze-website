/*
This script is used to display a cookie policy popup. It is used on all bitcraze.io
sites and must be self contained (not use any styling from css files).

On www.bitcraze.io it is loaded and started from html, while it is loaded and
triggered from Google Tag Manager on the other sub domains.

Add this code snippet to GTM:

var script = document.createElement('script');
var prior = document.getElementsByTagName('script')[0];
script.async = 1;
script.src = "https://www.bitcraze.io/js/cookiepopup.js";
script.onload = script.onreadystatechange = function( _, isAbort ) {
    if(isAbort || !script.readyState || /loaded|complete/.test(script.readyState) ) {
        script.onload = script.onreadystatechange = null;
        script = undefined;

        if(!isAbort) { cookiepopup.start(); }
    }
};
prior.parentNode.insertBefore(script, prior);

*/

var cookiepopup = {
    name: "CookiePolicyAccepted",
    start: function() {
        if (navigator.cookieEnabled && !cookiepopup.isCrawler()) {
            if (!cookiepopup.hasUserAcceptedPolicy()) {
                document.body.innerHTML = '<div id="cookiePolicyPopup" style="line-height:20px; position: fixed; bottom: 5px; right: 5px; width: 300px; background-color: black; color: green; font-family: monospace; font-size: 16px; padding: 10px; border: 3px solid gray; z-index:999"> >> We use cookies to give you a good experience when visiting bitcraze.io. By using our site, you agree to our <a href="https://www.bitcraze.io/cookies/" target="_blank" style="color:#95C941">use of cookies</a> <br> <br><div><a onclick="cookiepopup.acceptCookiePolicy();" style="color:#95C941; cursor: pointer; text-decoration: none;"> ---------------<br> | OK, got it! |<br> ---------------<br> </a></div></div> ' + document.body.innerHTML;
            }
        }
    },
    isCrawler: function() {
        var botPattern = "/bot|google|baidu|bing|msn|teoma|slurp|yandex/i";
        var re = new RegExp(botPattern, 'i');
        var userAgent = navigator.userAgent;
        return re.test(userAgent);
    },
    hasUserAcceptedPolicy: function () {
        return (document.cookie.indexOf(cookiepopup.name) != -1);
    },
    acceptCookiePolicy: function () {
        var date = new Date();
        date.setFullYear(date.getFullYear() + 1);
        document.cookie = cookiepopup.name + "=yes;expires=" + date.toGMTString() + ";path=/;domain=bitcraze.io";
        element = document.getElementById("cookiePolicyPopup");
        element.style.display = "none";
    },
    clearCookie: function () {
        var date = new Date(1970);
        document.cookie = cookiepopup.name + "=;expires=" + date.toGMTString() + ";path=/;domain=bitcraze.io";
    },
};
