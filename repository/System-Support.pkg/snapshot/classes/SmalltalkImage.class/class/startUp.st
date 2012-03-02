
!SmalltalkImage class methodsFor: 'initialization'!
startUp
	SystemChangeNotifier uniqueInstance
		notify: Smalltalk
		ofAllSystemChangesUsing: #event:! !
