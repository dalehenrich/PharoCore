
!FilePackage methodsFor: 'conflict checker'!
findUpdateChangeSetMatching: updateNumber
	"Find update-changeset beginning with updateNumber, or reasonably close."
	"This is to account for the fact that many changeset files are output from final releases, but may be tested for conflicts in a following alpha image, which will often not include that particular update-changeset from the final release but will contain ones near it.  For example, if the file updateNumber is 5180 (from 3.5 final), but the image has no update-changeset beginning with 5180 because it's a 3.6alpha image (which starts at 5181), it will try up to 5190 and down to 5170 for a close match."
	| updateNumberChangeSet updateNumberToTry |

	updateNumberToTry := updateNumber.
	updateNumberChangeSet := nil.
	[updateNumberChangeSet isNil and: [updateNumberToTry notNil]] whileTrue:
		[updateNumberChangeSet := ChangeSet allChangeSets
			detect: [:cs | (cs name beginsWith: updateNumberToTry asString)
							and: [(cs name at: (updateNumberToTry asString size + 1)) isDigit not]]
			ifNone: [nil].
		updateNumberToTry >= updateNumber ifTrue:
			[updateNumberToTry < (updateNumber + 10)
				ifTrue: [updateNumberToTry := updateNumberToTry + 1]
				ifFalse: [updateNumberToTry := updateNumber]].
		updateNumberToTry <= updateNumber ifTrue:
			[updateNumberToTry > (updateNumber - 10)
				ifTrue: [updateNumberToTry := updateNumberToTry - 1]
				ifFalse: [updateNumberToTry := nil  "we're done trying"]].
		].

	updateNumberChangeSet ifNil:
		[(self confirm: 'Warning: No changeset beginning with ',
updateNumber asString, ' (within +/- 10) was found in the image.
You must have changesets going back this far in your image
in order to accurately check for conflicts.
Proceed anyway?')
			ifTrue: [updateNumberChangeSet := ChangeSet allChangeSets first]].

	^ updateNumberChangeSet! !
