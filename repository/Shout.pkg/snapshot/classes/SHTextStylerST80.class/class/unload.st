
!SHTextStylerST80 class methodsFor: 'initialization'!
unload
	(PluggableTextMorph respondsTo: #stylingClass:)
		ifTrue: [ PluggableTextMorph stylingClass: nil ]
	! !
