
!FileList class methodsFor: 'utility'!
itemsForFile: file
	"Answer a list of services appropriate for a file of the given full name"

	| services suffix |
	suffix := file asReference extension.
	services := OrderedCollection new.
	self registeredFileReaderClasses do: [:reader |
		reader ifNotNil: [
				services addAll: (reader fileReaderServicesForFile: file fullName suffix: suffix)]].
	^ services! !
