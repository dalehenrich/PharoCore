
Object subclass: #BalloonEngine
	instanceVariableNames: 'workBuffer span bitBlt forms clipRect destOffset externals aaLevel edgeTransform colorTransform deferred postFlushNeeded'
	classVariableNames: 'BezierStats BufferCache CacheProtect Counts Debug Times'
	poolDictionaries: 'BalloonEngineConstants'
	category: 'Balloon-Engine'!

!BalloonEngine commentStamp: '<historical>' prior: 0!
BalloonEngine is the representative for the Balloon engine inside Squeak. For most purposes it should not be used directly but via BalloonCanvas since this ensures proper initialization and is polymorphic with other canvas uses.!
