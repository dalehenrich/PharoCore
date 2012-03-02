
MorphicEvent subclass: #DropEvent
	instanceVariableNames: 'position contents wasHandled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Events'!

!DropEvent commentStamp: 'LaurentLaffont 3/15/2011 20:47' prior: 0!
I model the event produced when a hand drops a (grabbed) morph into another morph.
I know the position of the drop, the dropped morph and the hand that produced me.

To handle this event a morph should override one of these methods:
#acceptDroppingMorph:event:
#justDroppedInto:event:

Additionaly, a morph can specify if it wants to accept a dropped morph by overriding #wantsDroppedMorph:event:. 
Symmetrically, the morph being dropped can specify if it wants to be dropped in another morph by overriding #wantsToBeDroppedInto:. 

Note that for a successful drop operation both parties need to agree.

See HandMorph>>dropMorph:event: for an example of usage.
!
