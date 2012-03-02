
Object subclass: #BalloonBezierSimulation
	instanceVariableNames: 'start end via lastX lastY fwDx fwDy fwDDx fwDDy maxSteps'
	classVariableNames: 'HeightSubdivisions LineConversions MonotonSubdivisions OverflowSubdivisions'
	poolDictionaries: ''
	category: 'Balloon-Simulation'!

!BalloonBezierSimulation commentStamp: '<historical>' prior: 0!
This class is a simulation of the code that's run by the Balloon engine. For debugging purposes only.!
