
!SAClassAnnouncementTest methodsFor: 'tests'!
testRemovedCategory
	| count | 
	[
		count := 0.
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
