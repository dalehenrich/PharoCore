
!PSMCPatchMorph methodsFor: 'as yet unclassified'!
changeTreeKey: aCharacter
	"Handle change tree key strokes."

	(aCharacter == $b and: [self selectionHasAcutalClass]) ifTrue: [
		^self browseClass].
	(aCharacter == $v and: [self selectionIsMethodChange]) ifTrue: [
		^self browseVersions].
	(aCharacter == $m and: [self selectionIsMethodChange]) ifTrue: [
		^self browseImplementors].
	(aCharacter == $n and: [self selectionIsMethodChange]) ifTrue: [
		^self browseSenders]! !