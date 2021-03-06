
!Morph methodsFor: 'dropping/grabbing'!
justDroppedInto: aMorph event: anEvent
	"This message is sent to a dropped morph after it has been dropped on -- and been accepted by -- a drop-sensitive morph"

	| aWindow  cmd |
	(self formerOwner notNil and: [self formerOwner ~~ aMorph])
		ifTrue: [self removeHalo].
	self formerOwner: nil.
	self formerPosition: nil.
	(aWindow := aMorph ownerThatIsA: SystemWindow) 
		ifNotNil: [aWindow isActive 
			ifFalse: [aWindow activate]].
	(self isInWorld) 
		ifTrue: [self world startSteppingSubmorphsOf: self].

	"An object launched by certain parts-launcher mechanisms should end up fully visible..."
	(self hasProperty: #beFullyVisibleAfterDrop) 
		ifTrue: [aMorph == ActiveWorld 
			ifTrue: [self goHome].
			self removeProperty: #beFullyVisibleAfterDrop].

! !
