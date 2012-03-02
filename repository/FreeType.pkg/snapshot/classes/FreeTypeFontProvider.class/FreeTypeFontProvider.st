
FontProviderAbstract subclass: #FreeTypeFontProvider
	instanceVariableNames: 'fileInfos fileInfoCache tempFileInfos embeddedFileInfoCache families tempFamilies'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FreeType-FontManager'!

FreeTypeFontProvider class
	instanceVariableNames: 'current'!

!FreeTypeFontProvider commentStamp: 'tween 3/15/2007 17:23' prior: 0!
A FreeTypeFontProvider is xxxxxxxxx.

Instance Variables
	fontInfoCache:		<Object>
	fontInfos:		<Object>

fontInfoCache
	- xxxxx

fontInfos
	- set of FreeTypeFontInfo. Info about all the fonts that are available
!
