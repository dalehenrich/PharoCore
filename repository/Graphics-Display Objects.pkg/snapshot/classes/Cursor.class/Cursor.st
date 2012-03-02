
Form subclass: #Cursor
	instanceVariableNames: ''
	classVariableNames: 'BlankCursor BottomLeftCursor BottomRightCursor CornerCursor CrossHairCursor CurrentCursor DownCursor MarkerCursor MenuCursor MoveCursor NormalCursor OriginCursor OverEditableText ReadCursor ResizeLeftCursor ResizeTopCursor ResizeTopLeftCursor ResizeTopRightCursor RightArrowCursor SquareCursor TargetCursor TopLeftCursor TopRightCursor UpCursor WaitCursor WebLinkCursor WriteCursor XeqCursor'
	poolDictionaries: ''
	category: 'Graphics-Display Objects'!

!Cursor commentStamp: '<historical>' prior: 0!
I am a Form that is a possible appearance for a mouse cursor.  My size is always 16x16, ever since the original implementation on the Alto.

There are many examples available in the "current cursor" category of class methods.  For example, "Cursor normal" and "Cursor wait".  For example:

	Cursor wait show

!
