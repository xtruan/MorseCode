using Toybox.Application as App;
using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class MorseCodeApp extends App.AppBase {

    hidden var morseDictionary = {};
    hidden var asciiDictionary = {};
    hidden var numMin = 0;
    hidden var numMax = 9;
    hidden var letMin = 10;
    hidden var letMax = 35;
    hidden var symMin = 36;
    hidden var symMax = 46;
    hidden var proMin = 47;
    hidden var proMax = 58;
    hidden var phsMin = 59;
    hidden var phsMax = 66;
    hidden var qcdMin = 67;
    hidden var qcdMax = 76;
    
    hidden var currentPos = letMin;
    hidden var currentMode = Rez.Strings.str_letters;

    function initialize() {
        AppBase.initialize();
        // numbers
        morseDictionary.put(0, Rez.Strings.morse_1);
        morseDictionary.put(1, Rez.Strings.morse_2);
        morseDictionary.put(2, Rez.Strings.morse_3);
        morseDictionary.put(3, Rez.Strings.morse_4);
        morseDictionary.put(4, Rez.Strings.morse_5);
        morseDictionary.put(5, Rez.Strings.morse_6);
        morseDictionary.put(6, Rez.Strings.morse_7);
        morseDictionary.put(7, Rez.Strings.morse_8);
        morseDictionary.put(8, Rez.Strings.morse_9);
        morseDictionary.put(9, Rez.Strings.morse_0);
        //
        asciiDictionary.put(0, Rez.Strings.ascii_1);
        asciiDictionary.put(1, Rez.Strings.ascii_2);
        asciiDictionary.put(2, Rez.Strings.ascii_3);
        asciiDictionary.put(3, Rez.Strings.ascii_4);
        asciiDictionary.put(4, Rez.Strings.ascii_5);
        asciiDictionary.put(5, Rez.Strings.ascii_6);
        asciiDictionary.put(6, Rez.Strings.ascii_7);
        asciiDictionary.put(7, Rez.Strings.ascii_8);
        asciiDictionary.put(8, Rez.Strings.ascii_9);
        asciiDictionary.put(9, Rez.Strings.ascii_0);
        // letters
        morseDictionary.put(10, Rez.Strings.morse_A);
        morseDictionary.put(11, Rez.Strings.morse_B);
        morseDictionary.put(12, Rez.Strings.morse_C);
        morseDictionary.put(13, Rez.Strings.morse_D);
        morseDictionary.put(14, Rez.Strings.morse_E);
        morseDictionary.put(15, Rez.Strings.morse_F);
        morseDictionary.put(16, Rez.Strings.morse_G);
        morseDictionary.put(17, Rez.Strings.morse_H);
        morseDictionary.put(18, Rez.Strings.morse_I);
        morseDictionary.put(19, Rez.Strings.morse_J);
        morseDictionary.put(20, Rez.Strings.morse_K);
        morseDictionary.put(21, Rez.Strings.morse_L);
        morseDictionary.put(22, Rez.Strings.morse_M);
        morseDictionary.put(23, Rez.Strings.morse_N);
        morseDictionary.put(24, Rez.Strings.morse_O);
        morseDictionary.put(25, Rez.Strings.morse_P);
        morseDictionary.put(26, Rez.Strings.morse_Q);
        morseDictionary.put(27, Rez.Strings.morse_R);
        morseDictionary.put(28, Rez.Strings.morse_S);
        morseDictionary.put(29, Rez.Strings.morse_T);
        morseDictionary.put(30, Rez.Strings.morse_U);
        morseDictionary.put(31, Rez.Strings.morse_V);
        morseDictionary.put(32, Rez.Strings.morse_W);
        morseDictionary.put(33, Rez.Strings.morse_X);
        morseDictionary.put(34, Rez.Strings.morse_Y);
        morseDictionary.put(35, Rez.Strings.morse_Z);
        //
        asciiDictionary.put(10, Rez.Strings.ascii_A);
        asciiDictionary.put(11, Rez.Strings.ascii_B);
        asciiDictionary.put(12, Rez.Strings.ascii_C);
        asciiDictionary.put(13, Rez.Strings.ascii_D);
        asciiDictionary.put(14, Rez.Strings.ascii_E);
        asciiDictionary.put(15, Rez.Strings.ascii_F);
        asciiDictionary.put(16, Rez.Strings.ascii_G);
        asciiDictionary.put(17, Rez.Strings.ascii_H);
        asciiDictionary.put(18, Rez.Strings.ascii_I);
        asciiDictionary.put(19, Rez.Strings.ascii_J);
        asciiDictionary.put(20, Rez.Strings.ascii_K);
        asciiDictionary.put(21, Rez.Strings.ascii_L);
        asciiDictionary.put(22, Rez.Strings.ascii_M);
        asciiDictionary.put(23, Rez.Strings.ascii_N);
        asciiDictionary.put(24, Rez.Strings.ascii_O);
        asciiDictionary.put(25, Rez.Strings.ascii_P);
        asciiDictionary.put(26, Rez.Strings.ascii_Q);
        asciiDictionary.put(27, Rez.Strings.ascii_R);
        asciiDictionary.put(28, Rez.Strings.ascii_S);
        asciiDictionary.put(29, Rez.Strings.ascii_T);
        asciiDictionary.put(30, Rez.Strings.ascii_U);
        asciiDictionary.put(31, Rez.Strings.ascii_V);
        asciiDictionary.put(32, Rez.Strings.ascii_W);
        asciiDictionary.put(33, Rez.Strings.ascii_X);
        asciiDictionary.put(34, Rez.Strings.ascii_Y);
        asciiDictionary.put(35, Rez.Strings.ascii_Z);
        // symbols
        morseDictionary.put(36, Rez.Strings.morse_fs);
        morseDictionary.put(37, Rez.Strings.morse_cm);
        morseDictionary.put(38, Rez.Strings.morse_cl);
        morseDictionary.put(39, Rez.Strings.morse_qs);
        morseDictionary.put(40, Rez.Strings.morse_ap);
        morseDictionary.put(41, Rez.Strings.morse_hy);
        morseDictionary.put(42, Rez.Strings.morse_sl);
        morseDictionary.put(43, Rez.Strings.morse_br);
        morseDictionary.put(44, Rez.Strings.morse_qt);
        morseDictionary.put(45, Rez.Strings.morse_at);
        morseDictionary.put(46, Rez.Strings.morse_eq);
        //
        asciiDictionary.put(36, Rez.Strings.ascii_fs);
        asciiDictionary.put(37, Rez.Strings.ascii_cm);
        asciiDictionary.put(38, Rez.Strings.ascii_cl);
        asciiDictionary.put(39, Rez.Strings.ascii_qs);
        asciiDictionary.put(40, Rez.Strings.ascii_ap);
        asciiDictionary.put(41, Rez.Strings.ascii_hy);
        asciiDictionary.put(42, Rez.Strings.ascii_sl);
        asciiDictionary.put(43, Rez.Strings.ascii_br);
        asciiDictionary.put(44, Rez.Strings.ascii_qt);
        asciiDictionary.put(45, Rez.Strings.ascii_at);
        asciiDictionary.put(46, Rez.Strings.ascii_eq);
        // prosigns
        asciiDictionary.put(47, Rez.Strings.ascii_SOS);
        asciiDictionary.put(48, Rez.Strings.ascii_AA);
        asciiDictionary.put(49, Rez.Strings.ascii_AR);
        asciiDictionary.put(50, Rez.Strings.ascii_AS);
        asciiDictionary.put(51, Rez.Strings.ascii_BK);
        asciiDictionary.put(52, Rez.Strings.ascii_BT);
        asciiDictionary.put(53, Rez.Strings.ascii_CL);
        asciiDictionary.put(54, Rez.Strings.ascii_CT);
        asciiDictionary.put(55, Rez.Strings.ascii_DO);
        asciiDictionary.put(56, Rez.Strings.ascii_KN);
        asciiDictionary.put(57, Rez.Strings.ascii_SK);
        asciiDictionary.put(58, Rez.Strings.ascii_SN);
        //
        morseDictionary.put(47, Rez.Strings.morse_SOS);
        morseDictionary.put(48, Rez.Strings.morse_AA);
        morseDictionary.put(49, Rez.Strings.morse_AR);
        morseDictionary.put(50, Rez.Strings.morse_AS);
        morseDictionary.put(51, Rez.Strings.morse_BK);
        morseDictionary.put(52, Rez.Strings.morse_BT);
        morseDictionary.put(53, Rez.Strings.morse_CL);
        morseDictionary.put(54, Rez.Strings.morse_CT);
        morseDictionary.put(55, Rez.Strings.morse_DO);
        morseDictionary.put(56, Rez.Strings.morse_KN);
        morseDictionary.put(57, Rez.Strings.morse_SK);
        morseDictionary.put(58, Rez.Strings.morse_SN);
        //phrases
        morseDictionary.put(59, Rez.Strings.morse_K);
        morseDictionary.put(60, Rez.Strings.morse_R);
        morseDictionary.put(61, Rez.Strings.morse_CUL);
        morseDictionary.put(62, Rez.Strings.morse_BCNU);
        morseDictionary.put(63, Rez.Strings.morse_UR);
        morseDictionary.put(64, Rez.Strings.morse_RST);
        morseDictionary.put(65, Rez.Strings.morse_73);
        morseDictionary.put(66, Rez.Strings.morse_88);
        //
        asciiDictionary.put(59, Rez.Strings.ascii_K);
        asciiDictionary.put(60, Rez.Strings.ascii_R);
        asciiDictionary.put(61, Rez.Strings.ascii_CUL);
        asciiDictionary.put(62, Rez.Strings.ascii_BCNU);
        asciiDictionary.put(63, Rez.Strings.ascii_UR);
        asciiDictionary.put(64, Rez.Strings.ascii_RST);
        asciiDictionary.put(65, Rez.Strings.ascii_73);
        asciiDictionary.put(66, Rez.Strings.ascii_88);
        //q codes
        morseDictionary.put(67, Rez.Strings.morse_QSL);
        morseDictionary.put(68, Rez.Strings.morse_QSLqs);
        morseDictionary.put(69, Rez.Strings.morse_QRX);
        morseDictionary.put(70, Rez.Strings.morse_QRXqs);
        morseDictionary.put(71, Rez.Strings.morse_QRV);
        morseDictionary.put(72, Rez.Strings.morse_QRVqs);
        morseDictionary.put(73, Rez.Strings.morse_QRL);
        morseDictionary.put(74, Rez.Strings.morse_QRLqs);
        morseDictionary.put(75, Rez.Strings.morse_QTH);
        morseDictionary.put(76, Rez.Strings.morse_QTHqs);
        //
        asciiDictionary.put(67, Rez.Strings.ascii_QSL);
        asciiDictionary.put(68, Rez.Strings.ascii_QSLqs);
        asciiDictionary.put(69, Rez.Strings.ascii_QRX);
        asciiDictionary.put(70, Rez.Strings.ascii_QRXqs);
        asciiDictionary.put(71, Rez.Strings.ascii_QRV);
        asciiDictionary.put(72, Rez.Strings.ascii_QRVqs);
        asciiDictionary.put(73, Rez.Strings.ascii_QRL);
        asciiDictionary.put(74, Rez.Strings.ascii_QRLqs);
        asciiDictionary.put(75, Rez.Strings.ascii_QTH);
        asciiDictionary.put(76, Rez.Strings.ascii_QTHqs);
        
    }

    //! onStart() is called on application start up
    function onStart() {
    }

    //! onStop() is called when your application is exiting
    function onStop() {
    }
    
    function getCurrentMorseString() {
        return getMorseAtPosition(getCurrentPosition());
    }
    
    function getCurrentAsciiString() {
        return getAsciiAtPosition(getCurrentPosition());
    }
    
    function setCurrentMode(newMode) {
        currentMode = newMode;
        Sys.println(Ui.loadResource(getCurrentMode()));
    }
    
    function getCurrentMode() {
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
        if (getCurrentMode() == Rez.Strings.str_letters) {
            if (getCurrentPosition() > getLetterMaxPosition()) {
                setCurrentPosition(getLetterMinPosition());
            } else if (getCurrentPosition() < getLetterMinPosition()) {
                setCurrentPosition(getLetterMaxPosition());
            }
        } else if (getCurrentMode() == Rez.Strings.str_numbers) {
            if (getCurrentPosition() > getNumberMaxPosition()) {
                setCurrentPosition(getNumberMinPosition());
            } else if (getCurrentPosition() < getNumberMinPosition()) {
                setCurrentPosition(getNumberMaxPosition());
            }
        } else if (getCurrentMode() == Rez.Strings.str_symbols) {
            if (getCurrentPosition() > getSymbolMaxPosition()) {
                setCurrentPosition(getSymbolMinPosition());
            } else if (getCurrentPosition() < getSymbolMinPosition()) {
                setCurrentPosition(getSymbolMaxPosition());
            }
        } else if (getCurrentMode() == Rez.Strings.str_prosigns) {
            if (getCurrentPosition() > getProsignMaxPosition()) {
                setCurrentPosition(getProsignMinPosition());
            } else if (getCurrentPosition() < getProsignMinPosition()) {
                setCurrentPosition(getProsignMaxPosition());
            }
        } else if (getCurrentMode() == Rez.Strings.str_phrases) {
            if (getCurrentPosition() > getPhraseMaxPosition()) {
                setCurrentPosition(getPhraseMinPosition());
            } else if (getCurrentPosition() < getPhraseMinPosition()) {
                setCurrentPosition(getPhraseMaxPosition());
            }
        } else if (getCurrentMode() == Rez.Strings.str_qcodes) {
            if (getCurrentPosition() > getQCodeMaxPosition()) {
                setCurrentPosition(getQCodeMinPosition());
            } else if (getCurrentPosition() < getQCodeMinPosition()) {
                setCurrentPosition(getQCodeMaxPosition());
            }
        } else if (getCurrentMode() == Rez.Strings.str_notes) {
            
        }
        Sys.println(Ui.loadResource(getCurrentAsciiString()));
    }
    
    hidden function setCurrentPosition(newPos) {
        currentPos = newPos;
    }
    
    hidden function getCurrentPosition() {
        return currentPos;
    }
    
    hidden function getAsciiAtPosition(pos) {
        return asciiDictionary.get(pos);
    }
    
    hidden function getMorseAtPosition(pos) {
        return morseDictionary.get(pos);
    }
    
    hidden function getNumberMinPosition() {
        return numMin;
    }
    
    hidden function getNumberMaxPosition() {
        return numMax;
    }
    
    hidden function getLetterMinPosition() {
        return letMin;
    }
    
    hidden function getLetterMaxPosition() {
        return letMax;
    }
    
    hidden function getSymbolMinPosition() {
        return symMin;
    }
    
    hidden function getSymbolMaxPosition() {
        return symMax;
    }
    
    hidden function getProsignMinPosition() {
        return proMin;
    }
    
    hidden function getProsignMaxPosition() {
        return proMax;
    }
    
    hidden function getPhraseMinPosition() {
        return phsMin;
    }
    
    hidden function getPhraseMaxPosition() {
        return phsMax;
    }
    
    hidden function getQCodeMinPosition() {
        return qcdMin;
    }
    
    hidden function getQCodeMaxPosition() {
        return qcdMax;
    }

    //! Return the initial view of your application here
    function getInitialView() {
        return [ new MorseCodeView(), new MorseCodeDelegate() ];
    }

}
