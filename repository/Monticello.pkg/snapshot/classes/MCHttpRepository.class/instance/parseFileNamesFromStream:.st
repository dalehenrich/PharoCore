
!MCHttpRepository methodsFor: 'actions'!
parseFileNamesFromStream: aStream
	| names fullName |
	names := OrderedCollection new.
	[aStream atEnd] whileFalse:
		[[aStream upTo: $<. {$a. $A. nil} includes: aStream next] whileFalse.
		aStream upTo: $".
		aStream atEnd ifFalse: [
			fullName := aStream upTo: $".
			names add: fullName unescapePercents]].
	^ names! !
