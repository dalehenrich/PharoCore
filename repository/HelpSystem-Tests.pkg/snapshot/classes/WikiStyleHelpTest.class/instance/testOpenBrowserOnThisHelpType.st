
!WikiStyleHelpTest methodsFor: 'testing'!
testOpenBrowserOnThisHelpType
	|block|
	block := [
		|browser|
		browser := 	HelpBrowser openOn: WikiStyleHelp.
		World doOneCycleNow. 
		browser close ].
	self shouldnt: block raise: Error
 ! !
