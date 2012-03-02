
!DosFileDirectory class methodsFor: '*StartupPreferences'!
preferencesFolder

	^ self forFileName: ( self preferencesRootPath , SystemVersion current major asString , '.' , SystemVersion current minor asString , self slash )


! !
