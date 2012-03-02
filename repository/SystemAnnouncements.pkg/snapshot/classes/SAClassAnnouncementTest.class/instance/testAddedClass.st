
!SAClassAnnouncementTest methodsFor: 'tests'!
testAddedClass
	"test that when create a new class, the SystemClassAddedAnnouncement is correctly emitted"
	|class count | 
	[
		count := 0.
		self announcer when: ClassAdded do: [ :ann | 
			count := count + 1. ].
		class := Object subclass: #XXXX.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		class removeFromSystem
		 ]! !
