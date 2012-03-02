
!HostSystemMenusMenuItem class methodsFor: 'handlers'!
processFakeKeyboardEvent: evt macRoman: aMacRomanValue unicode: aUnicodeValue macKeyCode: aKeyCodeValue
	|event |
	
		event := Array new: 8.
		event at: 1 put: 2 "EventTypeKeyboard";
		  at: 2 put: (evt at: 2); 
		  at: 3 put: aKeyCodeValue asInteger;  
		  at: 4 put: 1; "key down"
		  at: 5 put: 8; "modifier keys  (CmmandKeyBit)"
		  at: 8 put: (evt at: 8).
		Sensor handleEvent: event.

		event := Array new: 8.
		event at: 1 put: 2 "EventTypeKeyboard";
		  at: 2 put: (evt at: 2)+1; 
		  at: 3 put: aMacRomanValue asInteger;
		  at: 4 put: 0; "key char"
		  at: 5 put: 8; "modifier keys  (CmmandKeyBit)"
		  at: 6 put: aUnicodeValue asInteger; "virtual key code"
		  at: 8 put: (evt at: 8).
		Sensor handleEvent: event.

		event := Array new: 8.
		event at: 1 put: 2 "EventTypeKeyboard";
		  at: 2 put: (evt at: 2)+2; 
		  at: 3 put: aKeyCodeValue asInteger;
		  at: 4 put: 2; "key press/release"
		  at: 5 put: 8; "modifier keys  (CmmandKeyBit)"
		  at: 8 put: (evt at: 8).
		Sensor handleEvent: event! !
