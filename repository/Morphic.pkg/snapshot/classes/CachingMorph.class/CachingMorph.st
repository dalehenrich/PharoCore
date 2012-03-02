
Morph subclass: #CachingMorph
	instanceVariableNames: 'damageRecorder cacheCanvas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Basic'!

!CachingMorph commentStamp: '<historical>' prior: 0!
This morph can be used to cache the picture of a morph that takes a long time to draw. It should be used with judgement, however, since heavy use of caching can consume large amounts of memory.!
