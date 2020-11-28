function imgSlider(captureImage, color, letter) {
  document.querySelector('.starbucks').src = captureImage;
  document.querySelector('.circle').style.background = color;
  document.querySelector('.letter').style.color = color;
  document.querySelector('.btn--portfolio').style.background = color;
}