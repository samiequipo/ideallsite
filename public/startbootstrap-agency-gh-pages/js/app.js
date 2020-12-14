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
				animationDuration: 310000,
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

	sliderAuto(glider, 113000)
});