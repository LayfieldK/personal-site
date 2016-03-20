
Concentration.Preloader = function (game) {

	this.background = null;
	this.preloadBar = null;

	this.ready = false;

};

Concentration.Preloader.prototype = {

	preload: function () {

		this.load.image('bg','/assets/ConAirCentration/explosions.jpg');
		this.load.image('playButton', '/assets/ConAirCentration/play.png');
		this.load.image('retryButton', '/assets/ConAirCentration/retry.png');
		this.load.atlas('animals', '/assets/ConAirCentration/all.png', '/assets/ConAirCentration/all.json');

	},

	create: function () {

		//	Once the load has finished we disable the crop because we're going to sit in the update loop for a short while as the music decodes
		this.state.start("MainMenu");
	},

	update: function () {


	}

};
