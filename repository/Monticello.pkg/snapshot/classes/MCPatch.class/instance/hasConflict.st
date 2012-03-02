
!MCPatch methodsFor: 'accessing'!
hasConflict
	^ self operations anySatisfy: [ :change| change isConflict ]! !
