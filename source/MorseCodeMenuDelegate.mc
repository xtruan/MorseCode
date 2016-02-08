using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class MorseCodeMenuDelegate extends Ui.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        if (item == :menu_letters) {
            App.getApp().setCurrentMode(MorseCodeConstants.str_letters);
        } else if (item == :menu_numbers) {
            App.getApp().setCurrentMode(MorseCodeConstants.str_numbers);
        } else if (item == :menu_symbols) {
            App.getApp().setCurrentMode(MorseCodeConstants.str_symbols);
        } else if (item == :menu_prosigns) {
            App.getApp().setCurrentMode(MorseCodeConstants.str_prosigns);
        } else if (item == :menu_phrases) {
            App.getApp().setCurrentMode(MorseCodeConstants.str_phrases);
        } else if (item == :menu_qcodes) {
            App.getApp().setCurrentMode(MorseCodeConstants.str_qcodes);
        } else if (item == :menu_notes) {
            App.getApp().setCurrentMode(MorseCodeConstants.str_notes);
        }
        App.getApp().prepareMenuChangedMorseCodeItem();
    }
}