
!SmalltalkImage class methodsFor: 'initialization'!
initializeShutDownList
	"SmalltalkImage initializeShutDownList"

	| oldList |
	oldList := ShutDownList.
	ShutDownList := OrderedCollection new.	"These get processed from the bottom up..."
	#(#Delay #DisplayScreen #InputEventFetcher #Form #PasteUpMorph #StrikeFont #Color #FileDirectory #SoundPlayer #HttpUrl #Password)
		do: [ :clsName | Smalltalk globals at: clsName ifPresent: [ :cls | Smalltalk addToShutDownList: cls ] ].
	oldList
		ifNotNil: [ 
			oldList
				reverseDo: [ :className | Smalltalk globals at: className ifPresent: [ :theClass | Smalltalk addToShutDownList: theClass ] ] ]! !
