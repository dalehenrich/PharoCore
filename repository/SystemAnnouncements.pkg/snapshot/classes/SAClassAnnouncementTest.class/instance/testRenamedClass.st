
!SAClassAnnouncementTest methodsFor: 'tests'!
testRenamedClass
	"test that when we rename a class (using class >> rename:), SystemClassRenamedAnnouncement is correctly emitted"
	| count class | 
	[
		count := 0.
		class := Object subclass: 'TestRenamedClassInitialName' asSymbol.
		self announcer when: ClassRenamed do: [ :ann | 
			count := count + 1. ].
		class rename: 'TestRenamedClassNewName'.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self flag: #cyrille. "should we not unsubscribe after to give a chance to the system to react and for
		example update itself."
		self announcer unsubscribe: self.
		class removeFromSystem ]! !
