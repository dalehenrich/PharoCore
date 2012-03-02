
LineSegment subclass: #Bezier3Segment
	instanceVariableNames: 'via1 via2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Balloon-Geometry'!

!Bezier3Segment commentStamp: '<historical>' prior: 0!
This class represents a cubic bezier segment between two points

Instance variables:
	via1, via2	<Point>	The additional control points (OFF the curve)!
