
!SAClassAnnouncementTest methodsFor: 'tests'!
testRecategorizedTrait
	"self debug: #testRecategorizedTrait"
	"test that when we set a new category to a trait, SystemClassRecategorizedAnnouncement is correctly emitted"
	| trait newCat oldCat itemClass |
	[
		trait := Trait named: #XXXX asSymbol
			uses: {}
			category: 'OldCategoryName'.
		self haltIf: [
			"something's wrong here"
			trait category = nil
			].
		self announcer when: ClassRecategorized do: [ :ann | 
			newCat := ann newCategory.
			oldCat := ann oldCategory.
			itemClass := ann itemClass.
			 ].
		trait category: 'Y'.
		self assert: newCat  = 'Y'.
		self assert: oldCat = 'OldCategoryName'.
		self assert: itemClass = (Smalltalk at: #XXXX).
	] ensure: [
		"we clean"
		|mCPackage|
		self announcer unsubscribe: self.
		trait removeFromSystem.
		Smalltalk organization removeCategory: 'OldCategoryName'.
		Smalltalk organization removeCategory: 'Y'.
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'OldCategoryName'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister].
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'Y'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister].
	
		 ]! !
