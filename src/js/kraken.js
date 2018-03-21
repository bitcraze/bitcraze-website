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

};