
!SystemOrganizer methodsFor: 'filein/out'!
fileOutCategory: category on: aFileStream initializing: aBool
	"Store on the file associated with aFileStream, all the traits and classes associated 
	with the category and any requested shared pools in the right order."

	| first poolSet tempClass classes traits |
	traits := self orderedTraitsIn: category.
	classes := self superclassOrder: category.
	poolSet := Set new.
	classes do:  [:class | class sharedPools do: [:eachPool | poolSet add: eachPool]].
	poolSet size > 0 ifTrue: [
		tempClass := Class new.
		tempClass shouldFileOutPools ifTrue: [
			poolSet := poolSet select: [:aPool |
				tempClass shouldFileOutPool: (Smalltalk globals keyAtIdentityValue: aPool)].
			poolSet do: [:aPool | tempClass fileOutPool: aPool onFileStream: aFileStream]]].
	first := true.
	traits, classes do: [:each | 
		first
			ifTrue: [first := false]
			ifFalse: [aFileStream cr; nextPut: Character newPage; cr].
		each
			fileOutOn: aFileStream
			moveSource: false
			toFile: 0
			initializing: false].
	aBool ifTrue: [classes do: [:cls | cls fileOutInitializerOn: aFileStream]].! !
