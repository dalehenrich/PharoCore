
BorderedMorph subclass: #PasteUpMorph
	instanceVariableNames: 'backgroundMorph worldState griddingOn'
	classVariableNames: 'DisableDeferredUpdates WindowEventHandler WorldAnnouncer'
	poolDictionaries: ''
	category: 'Morphic-Worlds'!

!PasteUpMorph commentStamp: 'nice 11/4/2009 23:06' prior: 0!
A morph whose submorphs comprise a paste-up of rectangular subparts which "show through".  Anything called a 'Playfield' is a PasteUpMorph.

Facilities commonly needed on pages of graphical presentations and on simulation playfields, such as the painting of new objects, turtle trails, gradient fills, background paintings, parts-bin behavior, collision-detection, etc., are (or will be) provided.

A World, the entire Smalltalk screen, is a PasteUpMorph.  A World responds true to isWorld.

model		<not used>
cursor		??
padding		??
backgroundMorph		A Form that covers the background.
turtleTrailsForm			Moving submorphs may leave trails on this form.
turtlePen				Draws the trails.
lastTurtlePositions		A Dictionary of (aPlayer -> aPoint) so turtle trails can be drawn 
						only once each step cycle.  The point is the start of the current stroke.
isPartsBin		If true, every object dragged out is copied.
autoLineLayout		??
indicateCursor		??
resizeToFit		??
wantsMouseOverHalos		If true, simply moving the cursor over a submorph brings up its halo.
worldState		If I am also a World, keeps the hands, damageRecorder, stepList etc.
griddingOn		If true, submorphs are on a grid

!
