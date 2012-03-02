
!FileStream class methodsFor: 'stdio'!
stderr

	^Stderr ifNil: [ Stderr := self standardIOStreamNamed: #stderr forWrite: true ]! !
