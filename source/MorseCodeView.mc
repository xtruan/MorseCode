using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class MorseCodeView extends Ui.View {

    function initialize() {
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        var view = View.findDrawableById("MorseLabel");
        view.setText(App.getApp().getCurrentMorseString());
        var view2 = View.findDrawableById("AsciiLabel");
        view2.setText(App.getApp().getCurrentAsciiString());
    
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }

}
