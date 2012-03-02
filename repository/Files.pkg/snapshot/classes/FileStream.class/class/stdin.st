
!FileStream class methodsFor: 'stdio'!
stdin

	^Stdin ifNil: [ Stdin := self standardIOStreamNamed: #stdin forWrite: false ]! !
