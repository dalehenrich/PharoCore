
!FilePackage methodsFor: 'conflict checker'!
checkForMoreRecentUpdateThanChangeSet: updateNumberChangeSet pseudoClass: pseudoClass selector: selector
	"Returns the source code for a conflict if a conflict is found, otherwise returns nil."

	| classOrMeta allChangeSets moreRecentChangeSets conflictingChangeSets changeRecordSource classAndMethodPrintString |

	classAndMethodPrintString := pseudoClass name, (pseudoClass hasMetaclass ifTrue: [' class'] ifFalse: ['']), '>>', selector asString.

	changeRecordSource := pseudoClass sourceCode at: selector.
	changeRecordSource isText
		ifTrue: [changeRecordSource := Text
					fromString: 'method: ', classAndMethodPrintString, ' was removed']
		ifFalse: [changeRecordSource stamp isEmptyOrNil ifTrue:
					[self notify: 'Warning: ', classAndMethodPrintString, ' in ', self packageName, ' has no timestamp/initials!!']].

	pseudoClass exists ifFalse:
		[(self classes at: pseudoClass name) hasDefinition
			ifTrue: [^ nil  "a method was added for a newly defined class; not a conflict"]
			ifFalse: [self class crTrace: 'CONFLICT found for ', classAndMethodPrintString, '... class ', pseudoClass name asString, ' does not exist in the image and is not defined in the file'.
					^ changeRecordSource]].

	classOrMeta := pseudoClass realClass.

	"Only printout the replacing methods here, but we still check for removed methods too in the rest of this method."
	(self class verboseConflicts and: [classOrMeta includesSelector: selector])
		ifTrue: [self class crTrace: '...checking ', classOrMeta asString, '>>', selector asString].

	allChangeSets := ChangeSet allChangeSets.
	moreRecentChangeSets := allChangeSets
				copyFrom: (allChangeSets indexOf: updateNumberChangeSet)
				to: (allChangeSets size).
	conflictingChangeSets := (moreRecentChangeSets select:
		[:cs | (cs atSelector: selector class: classOrMeta) ~~ #none]).
	conflictingChangeSets isEmpty ifTrue: [^ nil].

	self class crTrace: 'CONFLICT found for ', classAndMethodPrintString,
				(' with newer changeset' asPluralBasedOn: conflictingChangeSets).
	conflictingChangeSets do: [:cs | self class trace: ' ', cs name].
	^ changeRecordSource
! !
