
!StrikeFontSet class methodsFor: 'filein/out'!
installExternalFontFileName6: fileName encoding: encoding encodingName: aString textStyleName: styleName

	^ self installExternalFontFileName6: fileName inDir: FileDirectory default encoding: encoding encodingName: aString textStyleName: styleName.

"
StrikeFontSet createExternalFontFileForCyrillic: 'cyrillicFont.out'.

StrikeFontSet installExternalFontFileName6: 'latin2.out' encoding: Latin2Environment leadingChar encodingName: #Latin2 textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName6: 'uJapaneseFont.out' encoding: JapaneseEnvironment leadingChar encodingName: #Japanese textStyleName: #DefaultMultiStyle.

StrikeFontSet installExternalFontFileName6: 'uKoreanFont.out' encoding: UnicodeKorean leadingChar encodingName: #Korean textStyleName: #DefaultMultiStyle.

StrikeFontSet removeFontsForEncoding: 2 encodingName: #Gb2312.
self halt.
StrikeFontSet removeFontsForEncoding: 3 encodingName: #KsX1001.
"
! !
