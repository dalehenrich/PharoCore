
!ClassDescription methodsFor: 'filein/out'!
definition
	"Answer a String that defines the receiver."

	| aStream |
	aStream := (String new: 800) writeStream.
	superclass == nil
		ifTrue: [aStream nextPutAll: 'ProtoObject']
		ifFalse: [aStream nextPutAll: superclass name].
	aStream nextPutAll: self kindOfSubclass;
			store: self name.
	(self hasTraitComposition and: [self traitComposition notEmpty]) ifTrue: [
		aStream cr; tab; nextPutAll: 'uses: ';
			nextPutAll: self traitCompositionString].
	aStream cr; tab; nextPutAll: 'instanceVariableNames: ';
			store: self instanceVariablesString.
	aStream cr; tab; nextPutAll: 'classVariableNames: ';
			store: self classVariablesString.
	aStream cr; tab; nextPutAll: 'poolDictionaries: ';
			store: self sharedPoolsString.
	aStream cr; tab; nextPutAll: 'category: ';
			store: self category asString.

	superclass ifNil: [ 
		aStream nextPutAll: '.'; cr.
		aStream nextPutAll: self name.
		aStream space; nextPutAll: 'superclass: nil'. ].

	^ aStream contents! !
