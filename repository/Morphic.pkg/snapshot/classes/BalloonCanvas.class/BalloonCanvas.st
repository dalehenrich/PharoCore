
FormCanvas subclass: #BalloonCanvas
	instanceVariableNames: 'transform colorTransform engine aaLevel deferred'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Balloon'!

!BalloonCanvas commentStamp: '<historical>' prior: 0!
BalloonCanvas is a canvas using the BalloonEngine for drawing wherever possible. It has various methods which other canvases do not support due to the extra features of the balloon engine.!
