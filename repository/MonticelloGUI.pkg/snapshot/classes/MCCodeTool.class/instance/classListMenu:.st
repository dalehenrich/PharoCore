
!MCCodeTool methodsFor: 'menus'!
classListMenu: aMenu 

	aMenu addList: #(
		-
		('Browse full (b)'			browseMethodFull)
		('Browse hierarchy (h)'		classHierarchy)
		('Browse protocol (p)'		browseFullProtocol)
"		-
		('PrintOut'					printOutClass)
		('FileOut'					fileOutClass)
"		-
		('Show hierarchy'			methodHierarchy)
"		('Show definition'			editClass)
		('Show comment'			editComment)
"
"		-
		('Inst var refs...'			browseInstVarRefs)
		('Inst var defs...'			browseInstVarDefs)
		-
		('Class var refs...'			browseClassVarRefs)
		('Class vars'					browseClassVariables)
		('Class refs (N)'				browseClassRefs)
		-
		('Rename class ...'			renameClass)
		('Copy class'				copyClass)
		('Remove class (x)'			removeClass)
"
		-
		('Find method...'				findMethodInChangeSets)).
							
	^aMenu! !
