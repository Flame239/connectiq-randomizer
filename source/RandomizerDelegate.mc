using Toybox.WatchUi as Ui;
using Toybox.System as System;

class RandomizerDelegate extends Ui.BehaviorDelegate {
	private var rView;

    function initialize(view) {
    	rView = view;
        BehaviorDelegate.initialize();
    }

    function onNextPage() {
    	System.println("next page");
    	return true;
    }
    function onPreviousPage() {
    	System.println("prev page");
    	return true;
    }
    // Enter key
    function onSelect() {
    	rView.text = (Toybox.Math.rand() % 100).toString();
    	WatchUi.requestUpdate();
     	return true;
    }
}