
!SACategoryAnnouncementTest methodsFor: 'tests'!
testAddedCategory
	"self debug: #testAddedCategory"
	"test that when we add a category (using SystemDictionary>> addCategory), the SystemCategoryAddedAnnouncement is correctly emitted"
	| addedCount addedCat | 
	[
		addedCount := 0.
		self announcer when: CategoryAdded do: [ :ann | 
			self deny: ann timeStamp isNil.
			addedCount := addedCount + 1. 
			addedCat := ann event item].
		Smalltalk organization addCategory: 'XXXXX'.
		self assert: addedCat = 'XXXXX'.
		self assert: addedCount = 1.
	] ensure: [
		"we clean"
		|mCPackage|
		self announcer unsubscribe: self.
		Smalltalk organization removeCategory: 'XXXXX'.
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'XXXXX'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister]. 
		self flag: #cyrille. "why do we have to do that: it means that MC does not handle well the removal of category. so we should fix it?"
		
		
		]! !
