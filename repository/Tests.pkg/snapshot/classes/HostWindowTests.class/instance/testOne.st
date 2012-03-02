
!HostWindowTests methodsFor: 'testing'!
testOne
	"Make a host window, display some of Display on it and update."
	"self run: #testOne"
	| hwindow |
	hwindow := DisplayHostWindow 
		extent: 400 @ 300
		depth: Display depth.
	hwindow translateBy: 100 @ 100.	"Avoid window off topleft error"
	self 
		shouldnt: [ hwindow open ]
		raise: Error.
	self 
		assert: hwindow windowSize = (400 @ 300)
		description: 'intial size incorrect'.
	self 
		shouldnt: 
			[ Display displayOn: hwindow.
			hwindow forceToScreen: hwindow boundingBox.
			Display 
				displayOn: hwindow
				at: -100 @ -200.
			hwindow forceToScreen: (100 @ 100 extent: 200 @ 200).
			hwindow forceToScreen: (-100 @ 0 extent: 200 @ 2200) ]
		raise: Error.
	self 
		assert: hwindow windowPosition = (100 @ 100)
		description: 'initial position incorrect'.
	self 
		assert: (hwindow windowPosition: 300 @ 300) = (300 @ 300)
		description: 'altered position incorrect'.
	self 
		assert: hwindow windowSize = (400 @ 300)
		description: 'initial size incorrect'.
	self 
		assert: (hwindow windowSize: 600 @ 400) = (600 @ 400)
		description: 'altered size incorrect'.
	self 
		shouldnt: [ hwindow windowTitle: 'Yoo hoo!! See the new title' ]
		raise: Error.
	self 
		should: [ hwindow windowTitle: 'A Very long String.' , (String new: 300) ]
		raise: Error.
	(Delay forSeconds: 4) wait.
	self 
		shouldnt: [ hwindow close ]
		raise: Error! !
