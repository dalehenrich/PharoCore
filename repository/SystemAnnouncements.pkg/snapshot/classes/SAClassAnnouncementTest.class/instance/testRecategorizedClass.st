
!SAClassAnnouncementTest methodsFor: 'tests'!
testRecategorizedClass
	"self debug: #testRecategorizedClass"
	"test that when we set a new category to a class, SystemClassRecategorizedAnnouncement is correctly emitted"
	| class newCat oldCat itemClass |
	[
		class := Object subclass: #XXXX
			instanceVariableNames: '' 
			classVariableNames: '' 
			poolDictionaries: '' 
			category: 'OriginalCategory'.
		self haltIf: [
			"something's wrong here"
			class category = nil
			].
		self announcer when: ClassRecategorized do: [ :ann | 
			newCat := ann newCategory.
			oldCat := ann oldCategory.
			itemClass := ann itemClass.
			 ].
		class category: 'Y'.
		self assert: newCat  = 'Y'.
		self assert: oldCat = 'OriginalCategory'.
		self assert: itemClass = (Smalltalk at: #XXXX).
	] ensure: [
		"we clean"
		|mCPackage|
		self announcer unsubscribe: self.
		class removeFromSystem.
		Smalltalk organization removeCategory: 'Y'.
		Smalltalk organization removeCategory: 'OriginalCategory'.
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'Y'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister].
		mCPackage := (MCWorkingCopy allManagers detect: [:each | each packageName = 'OriginalCategory'] ifNone: [nil]) .
		mCPackage ifNotNil: [mCPackage unregister].
		 ]! !
