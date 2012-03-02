
!SAClassAnnouncementTest methodsFor: 'tests'!
testRemovedClass
	"test that when we removed a class, SystemClassRemovedAnnouncement is correctly emitted"
	| count class | 
	[
		count := 0.
		class := Object subclass: #XXXX.
		self announcer when: ClassRemoved do: [ :ann | 
			count := count + 1. ].
		class removeFromSystem.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self ]! !
