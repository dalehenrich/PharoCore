
!HierarchicalURI methodsFor: 'accessing'!
baseNameUnescaped
	"returns the last component stripped of its extension"

	^self baseName unescapePercents! !
