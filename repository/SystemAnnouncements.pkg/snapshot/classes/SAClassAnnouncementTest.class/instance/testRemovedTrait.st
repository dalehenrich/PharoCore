
!SAClassAnnouncementTest methodsFor: 'tests'!
testRemovedTrait
	"test that when we removed a trait, SystemClassRemovedAnnouncement is correctly emitted"
	| count trait | 
	[
		count := 0.
		trait := Trait named: #XXXX.
		self announcer when: ClassRemoved do: [ :ann | 
			count := count + 1. ].
		trait removeFromSystem.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self ]! !
