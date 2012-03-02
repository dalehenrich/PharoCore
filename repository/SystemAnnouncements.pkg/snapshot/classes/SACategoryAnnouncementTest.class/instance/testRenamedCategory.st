
!SACategoryAnnouncementTest methodsFor: 'tests'!
testRenamedCategory
	"self debug: #testRenamedCategory"
	"test that when we rename a category (using SystemDictionary>> renameCategory:), the SystemCategoryRenamedAnnouncement is correctly emitted"
	| newCategory oldCategory | 
	[
		self announcer when: CategoryRenamed do: [ :ann | 
			newCategory := ann newName.
			oldCategory := ann oldName.].
		Smalltalk organization addCategory: 'XXXXX'.
		Smalltalk organization renameCategory: 'XXXXX' toBe: 'YY'.
		self assert: newCategory = 'YY'.
		self assert: oldCategory = 'XXXXX'.
	] ensure: [
		"we clean"
		|mCPackage|
		self announcer unsubscribe: self.
		Smalltalk organization removeCategory: 'XXXXX'.
		Smalltalk organization removeCategory: 'YY'. 
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'XXXXX'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister].
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'YY'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister].
		]! !
