
!ScriptLoader methodsFor: 'cleaning'!
cleanUpForRelease
	"self new cleanUpForRelease"

	Author fullName: 'Mr.Cleaner'.
	self cleanUpPackageOrganizer.
	self cleanUpMethods.

	ImageMorph classPool at: #DefaultForm put: (Form extent: 1 @ 1 depth: 1).
	Smalltalk globals
		at: #TTFontDescription
		ifPresent: [ :c | 
			c
				clearDefault;
				clearDescriptions ].
	ExternalDropHandler resetRegisteredHandlers.
	FreeTypeFontProvider current initialize.
	SystemNavigation default
		allObjectsDo: [ :each | 
			(each respondsTo: #releaseCachedState)
				ifTrue: [ each releaseCachedState ] ].
	
	"Remove empty categories, which are not in MC packages, because MC does
	not do this (this script does not make packages dirty)"
	Smalltalk organization removeEmptyCategories.
	Smalltalk
		allClassesAndTraitsDo: [ :class |
			[ :each |
				each
					removeEmptyCategories;
					sortCategories ]
						value: class organization;
						value: class class organization ].
	Smalltalk organization sortCategories.
	Smalltalk garbageCollect.
	Smalltalk cleanUp: true except: #() confirming: false.
	Author reset! !
