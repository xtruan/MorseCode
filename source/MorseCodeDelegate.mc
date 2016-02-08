using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class MorseCodeDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        // menu
        Ui.pushView(new Rez.Menus.MainMenu(), new MorseCodeMenuDelegate(), Ui.SLIDE_UP);
        return true;
    }
    
    function onTap(tap) {
        // do vibe
		App.getApp().vibeForCurrentMorse();
    }
    
    function onSwipe(swipe) {
        if (swipe.getDirection() == Ui.SWIPE_LEFT) {
            // next
            App.getApp().prepareNextMorseCodeItem();
            Ui.requestUpdate();
        } else if (swipe.getDirection() == Ui.SWIPE_RIGHT) {
            // prev
            App.getApp().preparePrevMorseCodeItem();
            Ui.requestUpdate();
        }
    }
    
    function onKey(key) {
        //System.println(key.getKey());
        if (key.getKey() == Ui.KEY_ENTER) {
            // do vibe
			App.getApp().vibeForCurrentMorse();
        } else if (key.getKey() == Ui.KEY_UP) {
            // menu
            onMenu();
        } else if (key.getKey() == Ui.KEY_DOWN) {
            // next
            App.getApp().prepareNextMorseCodeItem();
            Ui.requestUpdate();
        }
    }
}