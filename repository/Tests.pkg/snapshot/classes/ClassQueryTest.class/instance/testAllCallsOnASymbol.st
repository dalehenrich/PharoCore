
!ClassQueryTest methodsFor: 'tests'!
testAllCallsOnASymbol

	| set cm |
	set := Beeper allCallsOn: #beep.
	cm := (set detect: [ :rgMethod | rgMethod selector == #play ]) compiledMethod.
	self assert: (cm methodClass == Beeper).
	self assert:  (cm literals includes: #beep)! !
