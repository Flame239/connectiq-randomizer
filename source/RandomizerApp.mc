using Toybox.Application as App;
using Toybox.WatchUi as Ui;
using Toybox.System;

class RandomizerApp extends App.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    	System.println("started");
    	initializeRand();
    }
    
    function initializeRand() {
    	var curTime = Toybox.System.getClockTime();
    	Toybox.Math.srand(10000 * curTime.hour + 100 * curTime.min + curTime.sec);
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    	System.println("finished");
    }

    // Return the initial view of your application here
    function getInitialView() {
    	var view = new RandomizerView();
        return [view , new RandomizerDelegate(view) ];
    }
}
