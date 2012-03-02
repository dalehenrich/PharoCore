
LineSegment subclass: #Bezier2Segment
	instanceVariableNames: 'via'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Balloon-Geometry'!

!Bezier2Segment commentStamp: '<historical>' prior: 0!
This class represents a quadratic bezier segment between two points

Instance variables:
	via		<Point>	The additional control point (OFF the curve)!
