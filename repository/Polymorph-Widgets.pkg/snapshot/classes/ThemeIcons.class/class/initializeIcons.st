
!ThemeIcons class methodsFor: 'class initialization'!
initializeIcons
	"self initializeIcons"
	
	| methods |
	icons := IdentityDictionary new.
	methods := self class selectors
				select: [:each | '*Icon' match: each asString].
	methods
		do: [:each | icons
				at: each
				put: (self perform: each)]! !
