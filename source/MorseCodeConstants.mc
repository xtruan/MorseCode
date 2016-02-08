class MorseCodeConstants {

    static var numMin = 0;
    static var numMax = 9;
    static var letMin = 10;
    static var letMax = 35;
    static var symMin = 36;
    static var symMax = 46;
    static var proMin = 47;
    static var proMax = 58;
    static var phsMin = 59;
    static var phsMax = 67;
    static var qcdMin = 68;
    static var qcdMax = 77;
	
	static var DOT = ".";
	static var DASH = "-";
	static var SPACE = " ";
	static var SPLIT = "%";
	
	static var morseArray = [
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
    
    ". - . - . -",
    "- - . . - -",
    "- - - . . .",
    ". . - - . .",
    ". - - - - .",
    "- . . . . -",
    "- . . - .",
    "- . - - . -",
    ". - . . - .",
    ". - - . - .",
    "- . . . -",
    
    ". . . - - - . . .",
    ". - . -",
    ". - . - .",
    ". - . . .",
    "- . . . - . -",
    "- . . . -",
    "- . - . . - . .",
    "- . - . -",
    "- . . - - -",
    "- . - - .",
    ". . . - . -",
    ". . . - .",
    
    "- . -",
    ". - .",
    "- . - .   . . -%. - . .",
    "- . . .   - . - .%- .   . . -",
    ". . -   . - .",
    ". - .   . . .   -",
    "- - . . .%. . . - -",
    "- - - . .%- - - . .",
    ". . . . . . . .",
    
    "- - . -   . . .%. - . .",
    "- - . -   . . .%. - . .   . . - - . .",
    "- - . -   . - .%- . . -",
    "- - . -   . - .%- . . -   . . - - . .",
    "- - . -   . - .%. . . -",
    "- - . -   . - .%. . . -   . . - - . .",
    "- - . -   . - .%. - . .",
    "- - . -   . - .%. - . .   . . - - . .",
    "- - . -   -%. . . .",
    "- - . -   -%. . . .   . . - - . .",
    
    ""];
    
    static var asciiArray = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K%Over",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R%Roger",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
    
    ".%Period",
    ",%Comma",
    ":%Colon",
    "?%Question",
    "'%Apostrophe",
    "-%Hyphen",
    "/%Slash",
    "()%Parentheses",
    "\"%Quotation",
    "@%At",
    "=%Equals",
    
    "SOS%Distress message",
    "AA%New line",
    "AR%End of message",
    "AS%Wait",
    "BK%Break",
    "BT%New paragraph",
    "CL%Going off air (clear)",
    "CT%Start copying",
    "DO%Chg. to Wabun Code",
    "KN%Spec. station to xmit",
    "SK%End transmission",
    "SN%Understood",
    
    "K%Over",
    "R%Roger",
    "CUL%See you later",
    "BCNU%Be seeing you",
    "UR%You're",
    "RST%Signal report",
    "73%Best regards",
    "88%Love and kisses",
    "Mistake%Delete last word",
    
    "QSL%I acknowledge",
    "QSL?%Do you acknowledge?",
    "QRX%Wait",
    "QRX?%Should I wait?",
    "QRV%I'm ready to copy",
    "QRV?%R U ready to copy?",
    "QRL%Frequency in use",
    "QRL?%Is frequency in use?",
    "QTH%My location is...",
    "QTH?%What's your location?",
    
    ""];
      
    static var notes = "Length of a dot = 1 unit\nLength of a dash = 3 units\nSpace b/t parts of a char = 1 unit\nSpace b/t chars = 3 units\nSpace b/t words = 7 units\n8 dots signal delete last word";
    	
    static var str_letters = "Letters";
    static var str_numbers = "Numbers";
    static var str_symbols = "Symbols";
    static var str_prosigns = "Prosigns";
    static var str_phrases = "Phrases";
    static var str_qcodes = "Q Codes";
    static var str_notes = "Notes";
}