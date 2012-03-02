
!HostSystemMenusMacOSX methodsFor: 'translation'!
buildStyle: integer
	| styles |
	styles := Set new.
	(integer bitAnd: 1) > 0 ifTrue: [styles add: #bold].
	(integer bitAnd: 2) > 0 ifTrue: [styles add: #italic].
	(integer bitAnd: 4) > 0 ifTrue: [styles add: #underline].
	(integer bitAnd: 8) > 0 ifTrue: [styles add: #outline].
	(integer bitAnd: 16) > 0 ifTrue: [styles add: #shadow].
	^styles! !
