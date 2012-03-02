
!HostSystemMenusMacOSX methodsFor: 'translation'!
buildModifers: integer
	| modifiers |
	integer isZero ifTrue: [^Set with: #command].
	modifiers := Set new.
	(integer bitAnd: 1) > 0 ifTrue: [modifiers add: #shift].
	(integer bitAnd: 2) > 0 ifTrue: [modifiers add: #option].
	(integer bitAnd: 4) > 0 ifTrue: [modifiers add: #control].
	(integer bitAnd: 8) > 0 ifTrue: [modifiers add: #nocommand].
	^modifiers! !
