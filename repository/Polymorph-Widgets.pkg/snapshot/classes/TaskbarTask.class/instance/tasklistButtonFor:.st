
!TaskbarTask methodsFor: 'as yet unclassified'!
tasklistButtonFor: aTasklist
	"Answer a button for the task."
	
	^self theme
		newTasklistButtonIn: aTasklist
		for: self! !
