
!FilePackage class methodsFor: 'instance creation'!
conflictsWithUpdatedMethods: fullName
	| conflicts changeList |
	conflicts := (self fromFileNamed: fullName) conflictsWithUpdatedMethods.
	conflicts isEmpty ifTrue: [^ self].
	changeList := Smalltalk tools changeList new.
	changeList
		changes: conflicts
		file: (FileDirectory default readOnlyFileNamed: fullName) close;
		openAsMorphName: 'Conflicts for ', (FileDirectory localNameFor: fullName)
		multiSelect: true 
! !
