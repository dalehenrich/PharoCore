
!ProtocolBrowser methodsFor: 'private'!
initListFrom: selectorCollection highlighting: aClass 
	"Make up the messageList with items from aClass in boldface."
	

	messageList := OrderedCollection new.
	selectorCollection do: [ :selector | | defClass item |  
		defClass := aClass whichClassIncludesSelector: selector.
		messageList add: (
			RGMethodDefinition
				realClass: defClass 
				selector: selector 
		)
	].
	selectedClass := aClass.! !
