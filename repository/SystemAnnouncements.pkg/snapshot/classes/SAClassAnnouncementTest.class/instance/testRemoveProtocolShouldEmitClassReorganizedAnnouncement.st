
!SAClassAnnouncementTest methodsFor: 'tests'!
testRemoveProtocolShouldEmitClassReorganizedAnnouncement

	"test that when we remove a protocol of a class, the systemClassReorganizedAnnouncement is correctly emitted"
	| count class | 
	[
		count := 0.
		class := Object subclass: #XXXX.
		class organization addCategory: 'new-protocol' before: nil.
		self announcer when: ClassReorganized do: [ :ann | 
			count := count + 1. ].
		class removeCategory: 'new-protocol'.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		class removeFromSystem
		 ]! !
