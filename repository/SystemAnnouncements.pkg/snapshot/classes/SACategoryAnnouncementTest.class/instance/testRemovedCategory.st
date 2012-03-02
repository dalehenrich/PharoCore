
!SACategoryAnnouncementTest methodsFor: 'tests'!
testRemovedCategory
	"test that when we remove a category (using SystemDictionary>> removeCategory:), the SystemCategoryRemovedAnnouncement is correctly emitted"
	| count addedCat | 
	[
		count := 0.
		addedCat := ''.
		Smalltalk organization addCategory: 'XXXXX'.
		self announcer when: CategoryRemoved do: [ :ann | 
			count := count + 1 ].
		Smalltalk organization removeCategory: 'XXXXX' .
		self assert: count = 1.
	] ensure: [
		"we clean"
		|mCPackage|
		self announcer unsubscribe: self.
		Smalltalk organization removeCategory: 'XXXXX'.
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'XXXXX'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister].
		 ]! !
