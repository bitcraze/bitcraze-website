---
# Front matter comment to make sure jekyll process liquid tags
---


// Load the IFrame Player API code asynchronously.
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/player_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var kraken = {
  loadYoutubeVideo: function(element) {
    var id = $(element).attr('data-video-id');

    dataLayer.push({
      'video-id': id,
      'event': 'delayed-video-play'
    });

    var player = new YT.Player(element, {
      videoId: id,
      playerVars: { 'autoplay': 1}
    });
  },

  scrollToNextScrollPoint: function() {
    var scrollPoints = $('.scroll-point');
    var firstVisible = kraken.findTopMostVisibleElement(scrollPoints);

    if (firstVisible != null) {
      kraken.scrollToElement(scrollPoints[firstVisible]);
    }
  },

  findTopMostVisibleElement: function(elements) {
    var firstVisible = null;

    for(var i = 0; i < elements.length; i++) {
      var rect = elements[i].getBoundingClientRect();
      if(rect.top > 0) {
        firstVisible = i;
        break;
      }
    }

    return firstVisible;
  },

  scrollToElement: function(element) {
    element.scrollIntoView({
      block: "start",
      inline: "nearest",
      behavior: 'smooth'
    });
  },

  registerSectionScrollerSpy: function() {
    window.addEventListener('scroll', kraken.scrollEventSectionScroller);
  },

  scrollEventSectionScroller: function(e) {
    var rect = $('body')[0].getBoundingClientRect();
    if (Math.abs(rect.bottom - $(window).height()) < 5) {
      $('.section-scroller:visible').hide();
    } else {
      $('.section-scroller:hidden').show();
    }
  },

  poplinkShowPopup: function(id, popupKey) {
    var container = document.getElementById("poplinkcontainer");
    if (container == null) {
      document.body.innerHTML = '<div id="poplinkcontainer" class="poplinkcontainer"></div>' + document.body.innerHTML;
      container = document.getElementById("poplinkcontainer");
    }

    var content = kraken.poplinkData[popupKey];
    container.innerHTML = content;
    container.setAttribute("data-origin", id);

    var anchorBox = document.getElementById(id).getBoundingClientRect();
    var containerBox = container.getBoundingClientRect();

    var viewportElement = document.documentElement;
    var scrollLeft = viewportElement.scrollLeft;
    var scrollTop = viewportElement.scrollTop;

    var left = anchorBox.left + scrollLeft - containerBox.width / 2 + anchorBox.width / 2;
    var top = anchorBox.top + scrollTop - containerBox.height;

    container.style.left = left + 'px';
    container.style.top = top + 'px';

    container.classList.add("poplinkShow");

    // Return false to terminate event propagation and prevent the link action
    return false;
  },

  // Listener that closes the poplink window when clicking outside it
  poplinkCloseClickListener: function(event) {
    const target = event.target;

    // Check if the target is part of the popup
    const popup = target.closest('#poplinkcontainer');
    if (popup == null) {
      var container = document.getElementById("poplinkcontainer");
      if (container) {
        // Only close if we did not click the link that opened the popup
        const originId = container.getAttribute("data-origin");
        if (originId != target.id) {
          container.classList.remove("poplinkShow");
        }
      }
    }
  },

  poplinkCloseKeyListener: function(event) {
    if (event.key === "Escape") {
      var container = document.getElementById("poplinkcontainer");
      if (container) {
        container.classList.remove("poplinkShow");
      }
    }
  },

  // poplinkData will contain a map of all poplinks, populated through the poplink liquid plugin
  poplinkData: {% poplink_js %},
};

window.addEventListener('click', kraken.poplinkCloseClickListener);
window.addEventListener('keydown', kraken.poplinkCloseKeyListener);
