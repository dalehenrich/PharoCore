
!SmartRefStream methodsFor: 'read write'!
mapClass: incoming
	"See if the old class named nm exists.  If so, return it.  If not, map it to a new class, and save the mapping in renamed.  "

	| cls oldVer sel nm |
	self flag: #bobconv.
	nm := renamed at: incoming ifAbsent: [ incoming ].	"allow pre-mapping around collisions"
	(nm endsWith: ' class')
		ifFalse: [ 
			cls := Smalltalk globals at: nm ifAbsent: [ nil ].
			cls ifNotNil: [ ^ cls ] ]
		ifTrue: [ 
			cls := Smalltalk globals at: nm substrings first asSymbol ifAbsent: [ nil ].
			cls ifNotNil: [ ^ cls class ] ].	"Known class.  It will know how to translate the instance."	"Known class.  It will know how to translate the instance."
	oldVer := self versionSymbol: (structures at: nm).
	sel := nm asString.
	sel at: 1 put: (sel at: 1) asLowercase.
	sel := sel , oldVer.	"i.e. #rectangleoc4"
	Symbol
		hasInterned: sel
		ifTrue: [ :symb | 
			(self class canUnderstand: sel asSymbol)
				ifTrue: [ 
					reshaped ifNil: [ reshaped := Dictionary new ].
					cls := self perform: sel asSymbol ] ].	"This class will take responsibility"
	cls
		ifNil: [ 
			cls := self writeClassRenameMethod: sel was: nm fromInstVars: (structures at: nm).
			cls isString
				ifTrue: [ cls := nil ] ].
	cls ifNotNil: [ renamed at: nm put: cls name ].
	^ cls! !
