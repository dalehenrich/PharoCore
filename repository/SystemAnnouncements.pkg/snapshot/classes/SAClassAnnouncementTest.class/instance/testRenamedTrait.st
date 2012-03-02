
!SAClassAnnouncementTest methodsFor: 'tests'!
testRenamedTrait
	"test that when we rename a trait (using Trait >> rename:), SystemClassRenamedAnnouncement is correctly emitted"
	| count trait | 
	[
		count := 0.
		trait := Trait named: 'TestRenamedTraitInitialName' asSymbol.
		self announcer when: ClassRenamed do: [ :ann | 
			count := count + 1. ].
		trait rename: 'TestRenamedTraitNewName'.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		trait removeFromSystem ]! !
