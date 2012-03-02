
!MorphicUIManager methodsFor: 'ui requests'!
informUserDuring: aBlock
	"Display a message as progress	during execution of the given block."
	"UIManager default informUserDuring: [:bar|
		#('one' 'two' 'three') do: [:info|
			bar value: info.
			1 to: 100 do: [:v |
				bar value: v.
				(Delay forMilliseconds: 20) wait]]]"
	
	self
		displayProgress: ''
		from: 1 to: 100
		during: [:bar | aBlock value: bar]! !
