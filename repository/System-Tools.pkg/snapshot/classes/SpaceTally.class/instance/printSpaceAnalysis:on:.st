
!SpaceTally methodsFor: 'fileout'!
printSpaceAnalysis: threshold on: aStream
	"SpaceTally new printSpaceAnalysis: 1 on:(FileStream forceNewFileNamed: 'STspace.text')"

	"sd-This method should be rewrote to be more coherent within the rest of the class 
	ie using preAllocate and spaceForInstanceOf:"

	"If threshold > 0, then only those classes with more than that number
	of instances will be shown, and they will be sorted by total instance space.
	If threshold = 0, then all classes will appear, sorted by name."

	| totalCodeSpace totalInstCount totalInstSpace n totalPercent |
	
	Smalltalk garbageCollect.
	totalCodeSpace := totalInstCount := totalInstSpace := n := 0.
	results := OrderedCollection new: Smalltalk classNames size.
	'Taking statistics...'
		displayProgressFrom: 0 to: Smalltalk classNames size
		during: [:bar |
		(Smalltalk globals allClasses) do:
			[:cl | | codeSpace instCount instSpace eltSize | codeSpace := cl spaceUsed.
			bar value: (n := n+1).
			Smalltalk garbageCollectMost.
			instCount := cl instanceCount.
			instSpace := cl instancesSizeInMemory.
			totalCodeSpace := totalCodeSpace + codeSpace.
			totalInstCount := totalInstCount + instCount.
			totalInstSpace := totalInstSpace + instSpace.
			results add: (SpaceTallyItem analyzedClassName: cl name codeSize: codeSpace instanceCount:  instCount spaceForInstances: instSpace).]].
		totalPercent := 0.0.

	"aStream timeStamp."
	aStream
		nextPutAll: ('Class' padded: #right to: 45 with: $ );
		nextPutAll: ('code space' padded: #left to: 12 with: $ );
		nextPutAll: ('# instances' padded: #left to: 12 with: $ );
		nextPutAll: ('inst space' padded: #left to: 12 with: $ );
		nextPutAll: ('percent' padded: #left to: 12 with: $ ); 
		nextPutAll: ('inst average size' padded: #left to: 20 with: $ ); cr.

	threshold > 0 ifTrue: [
		"If inst count threshold > 0, then sort by space"
		results := (results select: [:s | s instanceCount >= threshold or: [s spaceForInstances > (totalInstSpace // 500)]])
			asSortedCollection: [:s :s2 | s spaceForInstances > s2 spaceForInstances]].

	results do: [:s | | percent |
		aStream
			nextPutAll: (s analyzedClassName padded: #right to: 45 with: $ );
			nextPutAll: (s codeSize printString padded: #left to: 12 with: $ );
			nextPutAll: (s instanceCount printString padded: #left to: 12 with: $ );
			nextPutAll: (s spaceForInstances printString padded: #left to: 14 with: $ ).
		percent := s spaceForInstances*100.0/totalInstSpace roundTo: 0.1.
		totalPercent := totalPercent + percent.
		aStream nextPutAll: ((percent printShowingDecimalPlaces: 2) padded: #left to: 12 with: $ ).
		aStream nextPutAll: (((s spaceForInstances / s instanceCount) asFloat printShowingDecimalPlaces: 2) padded: #left to: 20 with: $ ).
		aStream cr].
	
	aStream
		cr; nextPutAll: ('Total' padded: #right to: 45 with: $ );
		nextPutAll: (totalCodeSpace printString padded: #left to: 12 with: $ );
		nextPutAll: (totalInstCount printString padded: #left to: 12 with: $ );
		nextPutAll: (totalInstSpace printString padded: #left to: 14 with: $ );
		nextPutAll: ((totalPercent roundTo: 0.1) printString padded: #left to: 12 with: $ ).! !
