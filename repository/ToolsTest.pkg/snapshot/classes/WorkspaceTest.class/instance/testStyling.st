
!WorkspaceTest methodsFor: 'tests'!
testStyling

	| workspace |
	workspace := Workspace new.
	self assert: workspace stylingActive.
	
	workspace toggleStylingActive.
	self deny: workspace stylingActive.! !
