
!SAClassAnnouncementTest methodsFor: 'tests'!
testRenameProtocolShouldEmitClassReorganizedAnnouncement
	"test that when we rename a protocol of a class, the systemClassReorganizedAnnouncement is correctly emitted"
	| count class | 
	[
		count := 0.
		class := Object subclass: #XXXX.
		class organization addCategory: 'old-protocol' before: nil.
		self announcer when: ClassReorganized do: [ :ann | 
			count := count + 1. ].
		class organization renameCategory: 'old-protocol' toBe: 'new-protocol'.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		class removeFromSystem
		 ]! !
