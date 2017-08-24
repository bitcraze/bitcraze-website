var cookiepopup = {
    name: "CookiePolicyAccepted",
    start: function() {
        if (navigator.cookieEnabled) {
            if (!cookiepopup.hasUserAcceptedPolicy()) {
                console.log("Show warning");
                document.body.innerHTML = '<div id="cookiePolicyPopup" style="line-height:1.2; position: fixed; bottom: 5px; right: 5px; width: 300px; background-color: black; color: green; font-family: monospace; font-size: larger; padding: 10px; border: 3px solid gray; z-index:999"> >> We use cookies to give you a good experience when visiting bitcraze.io. By using our site, you agree to our <a href="https://www.bitcraze.io/cookies/" target="_blank" style="color:#95C941">use of cookies</a> <br> <br><div style="line-height:1;"><a onclick="cookiepopup.acceptCookiePolicy();" style="color:#95C941; cursor: pointer; text-decoration: none;"> ---------------<br> | OK, got it! |<br> ---------------<br> </a></div></div> ' + document.body.innerHTML;
            }
        }
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
window.onload = cookiepopup.start;
