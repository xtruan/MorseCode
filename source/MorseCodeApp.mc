using Toybox.Application as App;
using Toybox.WatchUi as Ui;
using Toybox.System as Sys;
using Toybox.Attention as Attn;

class MorseCodeApp extends App.AppBase {
    
    hidden var currentPos;
    hidden var currentMode;
    hidden var isNotesMode;

    function initialize() {
        AppBase.initialize();
        
        currentPos = MorseCodeConstants.letMin;
        currentMode = MorseCodeConstants.str_letters;
        isNotesMode = false;
    }

    //! onStart() is called on application start up
    function onStart(state) {
    }

    //! onStop() is called when your application is exiting
    function onStop(state) {
    }
    
    function vibeForCurrentMorse() {
        if (getIsNotesMode()) {
            return;
        } else {
            var morseStr = getCurrentMorseString();
            var vibe = {};
            for (var i=0; i<morseStr.length(); i++) {
                var char = morseStr.substring(i, i+1);
                if (char.equals(MorseCodeConstants.DOT)) {
                    vibe.put(i, new Attn.VibeProfile( 75, 150 ));
                } else if (char.equals(MorseCodeConstants.DASH)) {
                    vibe.put(i, new Attn.VibeProfile( 75, 450 ));
                } else if (char.equals(MorseCodeConstants.SPACE)) {
                    vibe.put(i, new Attn.VibeProfile( 0, 150 ));
                } else if (char.equals(MorseCodeConstants.SPLIT)) {
                    vibe.put(i, new Attn.VibeProfile( 0, 450 ));
                }
            }
            // length above 8 causes crash :(
            if (vibe.values().size() <= 8) {
                Attn.vibrate(vibe.values());
            }
        }
    }
    
    function getCurrentMorseString() {
        return getMorseAtPosition(getCurrentPosition());
    }
    
    function getCurrentAsciiString() {
        if (getIsNotesMode()) {
            return getNotesString();
        } else {
            return getAsciiAtPosition(getCurrentPosition());
        }
    }
    
    function getNotesString() {
        return MorseCodeConstants.notes;
    }
    
    function setCurrentMode(newMode) {
        currentMode = newMode;
        // debug - print current category
        //Sys.println(getCurrentMode());
    }
    
    hidden function getCurrentMode() {
        return currentMode;
    }
    
    function prepareNextMorseCodeItem() {
        var pos = getCurrentPosition();
        pos++;
        setCurrentPosition(pos);
        prepareMorseCodeItem();
    }
    
    function preparePrevMorseCodeItem() {
        var pos = getCurrentPosition();
        pos--;
        setCurrentPosition(pos);
        prepareMorseCodeItem();
    }
    
    function prepareMenuChangedMorseCodeItem() {
        setCurrentPosition(999); // invalidate current position
        prepareMorseCodeItem();
    }
    
    hidden function prepareMorseCodeItem() {
        setNotesMode(false);
        if (getCurrentMode() == MorseCodeConstants.str_letters) {
            if (getCurrentPosition() > getLetterMaxPosition()) {
                setCurrentPosition(getLetterMinPosition());
            } else if (getCurrentPosition() < getLetterMinPosition()) {
                setCurrentPosition(getLetterMaxPosition());
            }
        } else if (getCurrentMode() == MorseCodeConstants.str_numbers) {
            if (getCurrentPosition() > getNumberMaxPosition()) {
                setCurrentPosition(getNumberMinPosition());
            } else if (getCurrentPosition() < getNumberMinPosition()) {
                setCurrentPosition(getNumberMaxPosition());
            }
        } else if (getCurrentMode() == MorseCodeConstants.str_symbols) {
            if (getCurrentPosition() > getSymbolMaxPosition()) {
                setCurrentPosition(getSymbolMinPosition());
            } else if (getCurrentPosition() < getSymbolMinPosition()) {
                setCurrentPosition(getSymbolMaxPosition());
            }
        } else if (getCurrentMode() == MorseCodeConstants.str_prosigns) {
            if (getCurrentPosition() > getProsignMaxPosition()) {
                setCurrentPosition(getProsignMinPosition());
            } else if (getCurrentPosition() < getProsignMinPosition()) {
                setCurrentPosition(getProsignMaxPosition());
            }
        } else if (getCurrentMode() == MorseCodeConstants.str_phrases) {
            if (getCurrentPosition() > getPhraseMaxPosition()) {
                setCurrentPosition(getPhraseMinPosition());
            } else if (getCurrentPosition() < getPhraseMinPosition()) {
                setCurrentPosition(getPhraseMaxPosition());
            }
        } else if (getCurrentMode() == MorseCodeConstants.str_qcodes) {
            if (getCurrentPosition() > getQCodeMaxPosition()) {
                setCurrentPosition(getQCodeMinPosition());
            } else if (getCurrentPosition() < getQCodeMinPosition()) {
                setCurrentPosition(getQCodeMaxPosition());
            }
        } else if (getCurrentMode() == MorseCodeConstants.str_notes) {
            setNotesMode(true);
        }
        // debug - print currently displayed item
        //Sys.println(getCurrentAsciiString());
    }
    
    hidden function setCurrentPosition(newPos) {
        currentPos = newPos;
    }
    
    hidden function getCurrentPosition() {
        return currentPos;
    }
    
    hidden function setNotesMode(notesMode) {
        isNotesMode = notesMode;
    }
    
    function getIsNotesMode() {
        return isNotesMode;
    }
    
    hidden function getAsciiAtPosition(pos) {
        return MorseCodeConstants.asciiArray[pos];
    }
    
    hidden function getMorseAtPosition(pos) {
        return MorseCodeConstants.morseArray[pos];
    }
    
    hidden function getNumberMinPosition() {
        return MorseCodeConstants.numMin;
    }
    
    hidden function getNumberMaxPosition() {
        return MorseCodeConstants.numMax;
    }
    
    hidden function getLetterMinPosition() {
        return MorseCodeConstants.letMin;
    }
    
    hidden function getLetterMaxPosition() {
        return MorseCodeConstants.letMax;
    }
    
    hidden function getSymbolMinPosition() {
        return MorseCodeConstants.symMin;
    }
    
    hidden function getSymbolMaxPosition() {
        return MorseCodeConstants.symMax;
    }
    
    hidden function getProsignMinPosition() {
        return MorseCodeConstants.proMin;
    }
    
    hidden function getProsignMaxPosition() {
        return MorseCodeConstants.proMax;
    }
    
    hidden function getPhraseMinPosition() {
        return MorseCodeConstants.phsMin;
    }
    
    hidden function getPhraseMaxPosition() {
        return MorseCodeConstants.phsMax;
    }
    
    hidden function getQCodeMinPosition() {
        return MorseCodeConstants.qcdMin;
    }
    
    hidden function getQCodeMaxPosition() {
        return MorseCodeConstants.qcdMax;
    }

    //! Return the initial view of your application here
    function getInitialView() {
        return [ new MorseCodeView(), new MorseCodeDelegate() ];
    }

}
