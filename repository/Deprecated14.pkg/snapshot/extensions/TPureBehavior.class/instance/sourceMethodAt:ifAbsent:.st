
!TPureBehavior methodsFor: '*Deprecated14'!
sourceMethodAt: selector ifAbsent: aBlock
	"Answer the paragraph corresponding to the source code for the 
	argument."
	self deprecated: 'use sourceCodeAt:'  on: ' 28 February 2012'  in: 'Pharo 1.4'.
	^ (self sourceCodeAt: selector ifAbsent: [^ aBlock value]) asText makeSelectorBoldIn: self! !