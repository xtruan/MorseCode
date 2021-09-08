using Toybox.Application as App;
using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;

class MorseCodeView extends Ui.View {

    hidden var firstUpdate = true;
    hidden var morseFont;

    function initialize() {
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        morseFont = Ui.loadResource(Rez.Fonts.MorseFont);
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        var h = dc.getHeight();
        var w = dc.getWidth();
        
        // Set the background color then call to clear the screen
        dc.setColor(Gfx.COLOR_TRANSPARENT, Gfx.COLOR_BLACK);
        dc.clear();
    
        dc.setColor(Gfx.COLOR_WHITE, Gfx.COLOR_TRANSPARENT);
        
        if (App.getApp().getIsNotesMode()) {
            var notes = App.getApp().getNotesString();
            dc.drawText(w/2, h/2, Gfx.FONT_XTINY, notes, Gfx.TEXT_JUSTIFY_CENTER|Gfx.TEXT_JUSTIFY_VCENTER);
        } else {
            var morse = App.getApp().getCurrentMorseString();
            var seperatorPos = morse.find(MorseCodeConstants.SPLIT);
            if (seperatorPos != null) {
                var morseText = morse.substring(0, seperatorPos) + "\n" + 
                    morse.substring(seperatorPos+1, morse.length());
                dc.drawText(w/2, h/2, morseFont, morseText, Gfx.TEXT_JUSTIFY_CENTER|Gfx.TEXT_JUSTIFY_VCENTER);
            } else {
                dc.drawText(w/2, h/2, morseFont, morse, Gfx.TEXT_JUSTIFY_CENTER|Gfx.TEXT_JUSTIFY_VCENTER);
            }
            
            var ascii = App.getApp().getCurrentAsciiString();
            seperatorPos = ascii.find(MorseCodeConstants.SPLIT);
            if (seperatorPos != null) {
                dc.drawText(w/2, h/20, Gfx.FONT_LARGE, ascii.substring(0, seperatorPos), Gfx.TEXT_JUSTIFY_CENTER);
                dc.drawText(w/2, 7*h/10, Gfx.FONT_TINY, ascii.substring(seperatorPos+1, ascii.length()), Gfx.TEXT_JUSTIFY_CENTER);
            } else {
                dc.drawText(w/2, h/20, Gfx.FONT_LARGE, ascii, Gfx.TEXT_JUSTIFY_CENTER);
            }
        }
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }

}
