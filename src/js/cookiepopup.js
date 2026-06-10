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
    sessionKey: "CookiePolicyAccepted",
    start: function() {
        if (!cookiepopup.isCrawler() && !cookiepopup.hasUserAcceptedPolicy()) {
            document.body.innerHTML = '<div id="cookiePolicyPopup" style="line-height: 1.5; position: fixed; bottom: 16px; right: 16px; width: 300px; background-color: #003000; color: white; font-family: Lato, sans-serif; font-size: 14px; padding: 16px; border: 2px solid #95C941; border-radius: 8px; z-index:999; box-shadow: 0 4px 24px rgba(0,0,0,0.4);"><span style="color:#95C941; font-weight:bold;">&gt;&gt;</span> We use cookies to give you a good experience when visiting bitcraze.io. By using our site, you agree to our <a href="https://www.bitcraze.io/cookies/" target="_blank" rel="noopener noreferrer" style="color:#95C941;">use of cookies</a>.<br><br><a onclick="cookiepopup.acceptCookiePolicy();" style="display:inline-block; cursor:pointer; text-decoration:none; color:#003000; background-color:#95C941; padding: 6px 20px; border-radius: 20px; font-weight: bold; font-size: 13px;">OK, got it!</a></div>' + document.body.innerHTML;
        }
    },
    isCrawler: function() {
        var re = new RegExp('/bot|google|baidu|bing|msn|teoma|slurp|yandex/i', 'i');
        return re.test(navigator.userAgent);
    },
    hasUserAcceptedPolicy: function() {
        try { return sessionStorage.getItem(cookiepopup.sessionKey) === 'yes'; } catch(e) { return false; }
    },
    acceptCookiePolicy: function() {
        try { sessionStorage.setItem(cookiepopup.sessionKey, 'yes'); } catch(e) {}
        var element = document.getElementById("cookiePolicyPopup");
        element.style.display = "none";
    },
    clearCookie: function() {
        try { sessionStorage.removeItem(cookiepopup.sessionKey); } catch(e) {}
    },
};
