
NewParagraph subclass: #MultiNewParagraph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Deprecated14'!

!MultiNewParagraph commentStamp: 'LaurentLaffont 6/8/2011 22:21' prior: 0!
Class intention
   My intention is the same as my super class. This is a good reason to merge me with my super class and to remove me.
   My main supplementary intention is to display the different kinds of text selection (secondary, find-replace and selection bar).

Class collaborations
   SelectionBlock instances are built by myself and stored in the extraSelectionBlocks instance variable in order to display supplementary selections

Class main API
   no particular main API.


Instance Variables
   extraSelectionBlocks: <Collection of SelectionBlock>
   findReplaceSelectionRegex: <RxMatcher>
   presentationLines: <Object>
   presentationText: <Object>
   refreshExtraSelection: <Boolean>
   secondarySelection: <String>

extraSelectionBlocks
   - a collection of SelectionBlock for the drowing of the differents kind of text selection

findReplaceSelectionRegex
   - the find/replace matcher that is set from the editor of by the FindReplaceService

presentationLines
   - created for debugging purpose, should be removed ?

presentationText
   - created for debugging purpose, should be removed ?

refreshExtraSelection
   - a boolean that is set to tru when there is a need to refresh selections

secondarySelection
   - the string of the secondary selection that is set from the editor when a portion of text is selected!
