
!DiskProxy methodsFor: 'i/o'!
comeFullyUpOnReload: smartRefStream
	"Internalize myself into a fully alive object after raw loading from a
	DataStream. (See my class comment.) DataStream will substitute the
	object from this eval for the DiskProxy."

	| globalObj symbol arrayIndex |
	symbol := globalObjectName.	"See if class is mapped to another name"
	(smartRefStream respondsTo: #renamed)
		ifTrue: [ 
			"If in outPointers in an ImageSegment, remember original class
			name. 
			See mapClass:installIn:. Would be lost otherwise."
			
			"This code is impossible to read and understand. Left in comment for educational purposes.
			
			(thisContext sender sender sender sender sender sender sender sender receiver class == ImageSegment
				and: [ thisContext sender sender sender sender method == (DataStream compiledMethodAt: #readArray) ]) 
				
			"
			false
				ifTrue: [ 
					arrayIndex := thisContext sender sender sender sender tempAt: 4.	"index var in readArray. Later safer to find i on stack
					of context."
					smartRefStream renamedConv at: arrayIndex put: symbol 
					
			].	"save original name"
			symbol := smartRefStream renamed at: symbol ifAbsent: [ symbol ] ].	"map"
	globalObj := Smalltalk globals
		at: symbol
		ifAbsent: [ 
			preSelector == nil & (constructorSelector = #yourself)
				ifTrue: [ 
					Transcript
						cr;
						show: symbol , ' is undeclared.'.
					(Undeclared includesKey: symbol)
						ifTrue: [ ^ Undeclared at: symbol ].
					Undeclared at: symbol put: nil.
					^ nil ].
			^ self error: 'Global "' , symbol , '" not found' ].
	preSelector
		ifNotNil: [ 
			Symbol
				hasInterned: preSelector
				ifTrue: [ :selector | 
					[ globalObj := globalObj perform: selector ]
						on: Error
						do: [ :ex | 
							ex messageText = 'key not found'
								ifTrue: [ ^ nil ].
							^ ex signal ] ] ].	"keep the Proxy if Project does not exist"
	constructorSelector ifNil: [ ^ globalObj ].
	Symbol
		hasInterned: constructorSelector
		ifTrue: [ :selector | 
			[ ^ globalObj perform: selector withArguments: constructorArgs ]
				on: Error
				do: [ :ex | 
					ex messageText = 'key not found'
						ifTrue: [ ^ nil ].
					^ ex signal ] ].	"args not checked against Renamed"
	^ nil! !
