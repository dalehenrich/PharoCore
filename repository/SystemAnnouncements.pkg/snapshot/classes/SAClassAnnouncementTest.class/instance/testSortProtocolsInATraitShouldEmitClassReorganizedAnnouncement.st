
!SAClassAnnouncementTest methodsFor: 'tests'!
testSortProtocolsInATraitShouldEmitClassReorganizedAnnouncement
	"test that when we sort the protocols (and if this sort concretly modify the order of protocols) of a class, the systemClassReorganizedAnnouncement is correctly emitted"
	| count trait | 
	[
		count := 0.
		trait := Trait named: #XXXX.
		trait organization addCategory: 'a' before: nil.
		trait organization addCategory: 'b' before: 'a'.
		self announcer when: ClassReorganized do: [ :ann | 
			count := count + 1. ].
		trait organization sortCategories.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		trait removeFromSystem
		 ]! !
