window.addEventListener('load', function () {
	const glider = new Glider(document.querySelector('.carousel__lista'), {
		slidesToShow: 1,
		slidesToScroll: 1,
		dots: '.carousel__indicadores',
		arrows: {
			prev: '.carousel__anterior',
			next: '.carousel__siguiente',
			loop: true
		},
		responsive: [{
			// screens greater than >= 775px
			breakpoint: 450,
			settings: {
				// Set to `auto` and provide item width to adjust to viewport
				slidesToShow: 2,
				slidesToScroll: 2,
				loop: true
			}
		}, {
			// screens greater than >= 1024px
			breakpoint: 800,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				draggable: true,
				scrollLock: true,
				autoplay: 1,
				animationDuration: 3000,
				animationTimingFunc: 'linear',
				rewind: true,
				loop: true
			}
		}]

	});

	//
	function sliderAuto(slider, miliseconds) {
		const slidesCount = slider.track.childElementCount;
		let slideTimeout = null;
		let nextIndex = 1;

		function slide() {
			slideTimeout = setTimeout(
				function () {
					if (nextIndex >= slidesCount) {
						nextIndex = 0;
					}
					slider.scrollItem(nextIndex++);
				},
				miliseconds
			);
		}

		slider.ele.addEventListener('glider-animated', function () {
			window.clearInterval(slideTimeout);
			slide();
		});

		slide();
	}

	sliderAuto(glider, 3000)
});

window.addEventListener('load', function () {
	const glider = new Glider(document.querySelector('.carousel__listaHeader'), {
		slidesToShow: 1,
		slidesToScroll: 1,
		dots: '.carousel__indicadores',
		arrows: {
			prev: '.carousel__anterior',
			next: '.carousel__siguiente',
			loop: true
		},
		responsive: [{
			// screens greater than >= 775px
			breakpoint: 450,
			settings: {
				// Set to `auto` and provide item width to adjust to viewport
				slidesToShow: 2,
				slidesToScroll: 2,
				loop: true
			}
		}, {
			// screens greater than >= 1024px
			breakpoint: 800,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1,
				draggable: true,
				scrollLock: true,
				autoplay: 1,
				animationDuration: 10000,
				animationTimingFunc: 'linear',
				rewind: true,
				loop: true
			}
		}]

	});

	//
	function sliderAuto(slider, miliseconds) {
		const slidesCount = slider.track.childElementCount;
		let slideTimeout = null;
		let nextIndex = 1;

		function slide() {
			slideTimeout = setTimeout(
				function () {
					if (nextIndex >= slidesCount) {
						nextIndex = 0;
					}
					slider.scrollItem(nextIndex++);
				},
				miliseconds
			);
		}

		slider.ele.addEventListener('glider-animated', function () {
			window.clearInterval(slideTimeout);
			slide();
		});

		slide();
	}

	sliderAuto(glider, 10000)
});

var radius = 240;
var autoRotate = true;
var rotateSpeed = -60;
var imgWidth = 120;
var imgHeight = 170;


setTimeout(init, 500);

var obox = document.getElementById('drag-container');
var ospin = document.getElementById('spin-container');
var aImg = ospin.getElementsByTagName('img');
var aVid = ospin.getElementsByTagName('video');
var aEle = [...aImg, ...aVid];


ospin.style.width = imgWidth + "px";
ospin.style.height = imgHeight + "px";


var ground = document.getElementById('ground');
ground.style.width = radius * 3 + "px";
ground.style.height = radius * 3 + "px";

function init(delayTime) {
	for (var i = 0; i < aEle.length; i++) {
		aEle[i].style.transform = "rotateY(" + (i * (360 / aEle.length)) + "deg) translateZ(" + radius + "px)";
		aEle[i].style.transition = "transform 1s";
		aEle[i].style.transitionDelay = delayTime || (aEle.length - i) / 4 + "s";
	}
}

function applyTranform(obj) {

	if (tY > 180) tY = 180;
	if (tY < 0) tY = 0;

	obj.style.transform = "rotateX(" + (-tY) + "deg) rotateY(" + (tX) + "deg)";
}

function playSpin(yes) {
	ospin.style.animationPlayState = (yes ? 'running' : 'paused');
}

var sX, sY, nX, nY, desX = 0,
	desY = 0,
	tX = 0,
	tY = 10;


if (autoRotate) {
	var animationName = (rotateSpeed > 0 ? 'spin' : 'spinRevert');
	ospin.style.animation = `${animationName} ${Math.abs(rotateSpeed)}s infinite linear`;
}


document.onpointerdown = function (e) {
	clearInterval(obox.timer);
	e = e || window.event;
	var sX = e.clientX,
		sY = e.clientY;

	this.onpointermove = function (e) {
		e = e || window.event;
		var nX = e.clientX,
			nY = e.clientY;
		desX = nX - sX;
		desY = nY - sY;
		tX += desX * 0.1;
		tY += desY * 0.1;
		applyTranform(obox);
		sX = nX;
		sY = nY;
	};

	this.onpointerup = function (e) {
		obox.timer = setInterval(function () {
			desX *= 0.95;
			desY *= 0.95;
			tX += desX * 0.1;
			tY += desY * 0.1;
			applyTranform(obox);
			playSpin(false);
			if (Math.abs(desX) < 0.5 && Math.abs(desY) < 0.5) {
				clearInterval(obox.timer);
				playSpin(true);
			}
		}, 17);
		this.onpointermove = this.onpointerup = null;
	};

	return false;
};

document.onmousewheel = function (e) {
	e = e || window.event;
	var d = e.wheelDelta / 20 || -e.detail;
	radius += d;
	init(1);
};