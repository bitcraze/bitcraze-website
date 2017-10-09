// Load the IFrame Player API code asynchronously.
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/player_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var kraken = {
  loadYoutubeVideo: function(element) {
    var id = $(element).attr('data-video-id');
    ga('send', 'event', 'video', 'play', id);
    var player = new YT.Player(element, {
      videoId: id,
      playerVars: { 'autoplay': 1}
    });
  },
};