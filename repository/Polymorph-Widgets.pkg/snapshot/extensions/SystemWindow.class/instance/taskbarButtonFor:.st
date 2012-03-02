
!SystemWindow methodsFor: '*Polymorph-Widgets'!
taskbarButtonFor: aTaskbar
	"Answer a new task bar button for the receiver.
	Answer nil if not required."

	^self theme
		newTaskbarButtonIn: aTaskbar
		for: self! !
