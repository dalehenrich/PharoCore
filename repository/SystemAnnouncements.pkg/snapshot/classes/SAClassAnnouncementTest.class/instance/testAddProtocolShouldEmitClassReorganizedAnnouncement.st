
!SAClassAnnouncementTest methodsFor: 'tests'!
testAddProtocolShouldEmitClassReorganizedAnnouncement
	
	"test that when we add a protocol to a class, the systemClassReorganizedAnnouncement is correctly emitted"
	| count class | 
	[
		count := 0.
		class := Object subclass: #XXXX.
		self announcer when: ClassReorganized do: [ :ann | 
			count := count + 1. ].
		class organization addCategory: 'new-protocol' before: nil.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		class removeFromSystem
		 ]! !
