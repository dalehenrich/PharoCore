
!MCStWriter methodsFor: 'writing'!
chunkContents: aBlock
	stream cr; nextChunkPut: (String streamContents: aBlock); cr! !
