
!FileList class methodsFor: 'file reader registration'!
allRegisteredServices
	"self allRegisteredServices"

	| col |
	col := OrderedCollection new.
	self registeredFileReaderClasses do: [:each | col addAll: (each services)].
	^ col! !