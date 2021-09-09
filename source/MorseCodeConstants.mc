class MorseCodeConstants {

    static var numMin = 0;
    static var numMax = 9;
    static var letMin = 10;
    static var letMax = 35;
    static var symMin = 36;
    static var symMax = 53;
    static var proMin = 54;
    static var proMax = 66;
    static var phsMin = 67;
    static var phsMax = 74;
    static var qcdMin = 75;
    static var qcdMax = 84;
    
    static var DOT = ".";
    static var DASH = "-";
    static var SPACE = " ";
    static var SPLIT = "%";
    
    static var morseArray = [
    //// numbers ////
    ". - - - -",
    ". . - - -",
    ". . . - -",
    ". . . . -",
    ". . . . .",
    "- . . . .",
    "- - . . .",
    "- - - . .",
    "- - - - .",
    "- - - - -",
    
    //// letters ////
    ". -",
    "- . . .",
    "- . - .",
    "- . .",
    ".",
    ". . - .",
    "- - .",
    ". . . .",
    ". .",
    ". - - -",
    "- . -",
    ". - . .",
    "- -",
    "- .",
    "- - -",
    ". - - .",
    "- - . -",
    ". - .",
    ". . .",
    "-",
    ". . -",
    ". . . -",
    ". - -",
    "- . . -",
    "- . - -",
    "- - . .",
    
    //// symbols ////
    ". - . - . -",
    "- - . . - -",
    ". . - - . .",
    "- . - . - -",
    ". - - - - .",
    "- . . . . -",
    "- . . - .",
    "- - - . . .",
    "- . - . - .",
    "- . - - .",
    "- . - - . -",
    ". - . . .",
    ". . - - . -",
    ". - . . - .",
    ". - - . - .",
    ". . . - . . -",
    ". - . - .",
    "- . . . -",
    
    //// prosigns ////
    ". . . - - - . . .",
    ". - . -",
    ". - . - .",
    ". - . . .",
    "- . . . - . -",
    "- . . . -",
    "- . - . . - . .",
    "- . - . -",
    "- . . - - -",
    ". . . . . . . .",
    "- . - - .",
    ". . . - . -",
    ". . . - .",
    
    //// phrases ////
    "- . -",
    ". - .",
    "- . - .   . . -%. - . .",
    "- . . .   - . - .%- .   . . -",
    ". . -   . - .",
    ". - .   . . .   -",
    "- - . . .%. . . - -",
    "- - - . .%- - - . .",
    
    //// q codes ////
    "- - . -   . . .%. - . .",
    "- - . -   . . .%. - . .   . . - - . .",
    "- - . -   . - .%- . . -",
    "- - . -   . - .%- . . -   . . - - . .",
    "- - . -   . - .%. . . -",
    "- - . -   . - .%. . . -   . . - - . .",
    "- - . -   . - .%. - . .",
    "- - . -   . - .%. - . .   . . - - . .",
    "- - . -   -%. . . .",
    "- - . -   -%. . . .   . . - - . ."];
    
    static var asciiArray = [
    //// numbers ////
    "1%One (WUN)",
    "2%Two (TOO)",
    "3%Three (TREE)",
    "4%Four (FOW-ER)",
    "5%Five (FIFE)",
    "6%Six (SIX)",
    "7%Seven (SEV-EN)",
    "8%Eight (AIT)",
    "9%Nine (NIN-ER)",
    "0%Zero (ZEE-RO)",
    
    //// letters ////
    "A%Alfa",
    "B%Bravo",
    "C%Charlie",
    "D%Delta",
    "E%Echo",
    "F%Foxtrot",
    "G%Golf",
    "H%Hotel",
    "I%India",
    "J%Juliett",
    "K%Kilo",
    "L%Lima",
    "M%Mike",
    "N%November",
    "O%Oscar",
    "P%Papa",
    "Q%Quebec",
    "R%Romeo",
    "S%Sierra",
    "T%Tango",
    "U%Uniform",
    "V%Victor",
    "W%Whiskey",
    "X%X-ray",
    "Y%Yankee",
    "Z%Zulu",
    
    //// symbols ////
    ".%Full stop (stop)",
    ",%Comma",
    "?%Question mark",
    "!%Exclamation mark",
    "'%Apostrophe",
    "-%Hyphen (minus)",
    "/%Slash",
    ":%Colon",
    ";%Semicolon",
    "(%Left bracket",
    ")%Right bracket",
    "&%Ampersand",
    "_%Underscore",
    "\"%Quotation mark",
    "@%At sign",
    "$%Dollar sign",
    "+%Plus sign",
    "=%Equals sign",
    
    //// prosigns ////
    "SOS%Distress message",
    "AA%New line",
    "AR%New page",
    "AS%Wait",
    "BK%Break",
    "BT%New paragraph",
    "CL%Going off air (closing)",
    "CT%Start copying",
    "DO/NJ%Shift to Wabun Code",
    "HH%Error (delete word)",
    "KN%Spec. station to xmit",
    "SK%End transmission",
    "SN%Understood",
    
    //// phrases ////
    "K%Over",
    "R%Roger",
    "CUL%See you later",
    "BCNU%Be seeing you",
    "UR%You're",
    "RST%Signal report",
    "73%Best regards",
    "88%Love and kisses",
    
    //// q codes ////
    "QSL%I acknowledge",
    "QSL?%Do you acknowledge?",
    "QRX%Wait",
    "QRX?%Should I wait?",
    "QRV%I'm ready to copy",
    "QRV?%R U ready to copy?",
    "QRL%Frequency in use",
    "QRL?%Is frequency in use?",
    "QTH%My location is...",
    "QTH?%What's your location?"];
      
    static var notes = "Length of a dot = 1\nLength of a dash = 3\n8 dots = delete last word\nSpace b/t parts of a char = 1\nSpace b/t chars = 3\nSpace b/t words = 7";
        
    static var str_letters = "Letters";
    static var str_numbers = "Numbers";
    static var str_symbols = "Symbols";
    static var str_prosigns = "Prosigns";
    static var str_phrases = "Phrases";
    static var str_qcodes = "Q Codes";
    static var str_notes = "Notes";
}
