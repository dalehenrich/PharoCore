
!FlatMessageListBrowser methodsFor: 'keys'!
arrowKey: aCharacter from: aPluggableListMorph 
	"handle keystroke"
	selectedItem ifNil: [ ^ self ].
	
	aCharacter = $n
		ifTrue: [ ^ self browseSendersOfMessagesFrom: self selectedMethod selector ].
	
	aCharacter = $N
		ifTrue: [ ^ self browseUsers ].	
		
	aCharacter = $x
		ifTrue: [ ^ self removeMethod: self selectedMethod inClass: self selectedClassOrMetaClass ].
		
	aCharacter = $b
		ifTrue: [ ^ self browseSelectedItem ].
		
	aCharacter = $v
		ifTrue: [ ^ self browseVersionsFrom: self selectedMethod ].
		
	aCharacter = $m
		ifTrue: [ self browseMessagesFrom: self selectedMethod selector ]! !
