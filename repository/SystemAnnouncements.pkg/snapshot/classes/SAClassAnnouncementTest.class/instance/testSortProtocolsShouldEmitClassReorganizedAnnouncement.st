
!SAClassAnnouncementTest methodsFor: 'tests'!
testSortProtocolsShouldEmitClassReorganizedAnnouncement
	"test that when we sort the protocols (and if this sort concretly modify the order of protocols) of a class, the systemClassReorganizedAnnouncement is correctly emitted"
	| count class | 
	[
		count := 0.
		class := Object subclass: #XXXX.
		class organization addCategory: 'a' before: nil.
		class organization addCategory: 'b' before: 'a'.
		self announcer when: ClassReorganized do: [ :ann | 
			count := count + 1. ].
		class organization sortCategories.
		self assert: count = 1.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		class removeFromSystem
		 ]! !
