
!CachingMorph methodsFor: 'as yet unclassified'!
updateCacheCanvas: aCanvas 
	"Update the cached image of the morphs being held by this hand."

	| myBnds rectList |
	myBnds := self fullBounds.
	(cacheCanvas isNil or: [cacheCanvas extent ~= myBnds extent]) 
		ifTrue: 
			[cacheCanvas := (aCanvas allocateForm: myBnds extent) getCanvas.
			cacheCanvas translateBy: myBnds origin negated
				during: [:tempCanvas | super fullDrawOn: tempCanvas].
			^self].

	"incrementally update the cache canvas"
	rectList := damageRecorder 
				invalidRectsFullBounds: (0 @ 0 extent: myBnds extent).
	damageRecorder reset.
	rectList do: 
			[:r | 
			cacheCanvas 
				translateTo: myBnds origin negated
				clippingTo: r
				during: 
					[:c | 
					c fillColor: Color transparent.	"clear to transparent"
					super fullDrawOn: c]]! !
