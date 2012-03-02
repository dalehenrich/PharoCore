
!StrikeFontSet class methodsFor: 'filein/out'!
installExternalFontFileName: fileName encoding: encoding encodingName: aString textStyleName: styleName

	^ self installExternalFontFileName: fileName inDir: FileDirectory default encoding: encoding encodingName: aString textStyleName: styleName.

"
StrikeFontSet createExternalFontFileForCyrillic: 'cyrillicFont.out'.

StrikeFontSet installExternalFontFileName: 'chineseFont.out' encoding: 2 encodingName: #Gb2312 textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName: 'japaneseFont.out' encoding: 1 encodingName: #JisX0208 textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName: 'defaultFont.out' encoding: 0 encodingName: #Latin1 textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName: 'cyrillicFont.out' encoding: UnicodeCyrillic leadingChar encodingName: #Cyrillic textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName: 'extendedLatinFont.out' encoding: UnicodeLatinExtendedAB leadingChar encodingName: #ExtendedLatin textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName: 'ipaExtensionsFont.out' encoding: UnicodeIPA leadingChar encodingName: #IPAExtensions textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName: 'armenianFont.out' encoding: UnicodeArmenian leadingChar encodingName: #Armenian textStyleName: #DefaultMultiStyle.
StrikeFontSet installExternalFontFileName: 'greekFont.out' encoding: UnicodeGreek leadingChar encodingName: #Greek textStyleName: #DefaultMultiStyle.

StrikeFontSet installExternalFontFileName: 'arrowFont.out' encoding: UnicodeArrows leadingChar encodingName: #Arrow textStyleName: #DefaultMultiStyle.

StrikeFontSet installExternalFontFileName: 'uJapaneseFont.out' indir: FileDirectory default encoding: JapaneseEnvironment leadingChar encodingName: #Japanese textStyleName: #DefaultMultiStyle.

StrikeFontSet installExternalFontFileName: 'uKoreanFont.out' encoding: UnicodeKorean leadingChar encodingName: #Korean textStyleName: #DefaultMultiStyle.

StrikeFontSet removeFontsForEncoding: 2 encodingName: #Gb2312.
self halt.
StrikeFontSet removeFontsForEncoding: 3 encodingName: #KsX1001.
"
! !
