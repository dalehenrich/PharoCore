
!SmalltalkEditor methodsFor: 'menu messages'!
sendersOf: selectedSelector
	" opens a Browser on the given selector"
	self model systemNavigation browseAllCallsOn: selectedSelector! !
