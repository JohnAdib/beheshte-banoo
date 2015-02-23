// Find the right method, call on correct element
function launchFullscreen(element) {
  if(element.requestFullscreen) {element.requestFullscreen();
  } else if(element.mozRequestFullScreen) {element.mozRequestFullScreen();
  } else if(element.webkitRequestFullscreen) {element.webkitRequestFullscreen();
  } else if(element.msRequestFullscreen) {element.msRequestFullscreen();
  }
}