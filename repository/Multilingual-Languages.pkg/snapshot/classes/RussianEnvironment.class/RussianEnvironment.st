
LanguageEnvironment subclass: #RussianEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Multilingual-Languages'!

!RussianEnvironment commentStamp: 'StephaneDucasse 11/29/2011 22:25' prior: 0!
EncodedCharSet initialize.
LanguageEnvironment resetKnownEnvironments.
Locale switchToID: (LocaleID isoLanguage: 'ru').
!
