
!SAClassAnnouncementTest methodsFor: 'tests'!
testAddedTrait
	"test that when create a new trait, the SystemClassAddedAnnouncement is correctly emitted"
	|trait count | 
	[
		count := 0.
		self announcer when: ClassAdded do: [ :ann | 
			count := count + 1. ].
		trait := Trait named: #XXXX.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		trait removeFromSystem
		 ]! !
