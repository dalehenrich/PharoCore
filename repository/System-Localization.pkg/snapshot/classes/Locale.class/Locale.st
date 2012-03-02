
Object subclass: #Locale
	instanceVariableNames: 'id shortDate longDate time decimalSymbol digitGrouping currencySymbol currencyNotation measurement offsetLocalToUTC offsetVMToUTC dstActive'
	classVariableNames: 'Activated Current CurrentPlatform KnownLocales LanguageSymbols LocaleChangeListeners PlatformEncodings'
	poolDictionaries: ''
	category: 'System-Localization'!

!Locale commentStamp: '<historical>' prior: 0!
Main comment stating the purpose of this class and relevant relationship to other classes.



	http://www.w3.org/WAI/ER/IG/ert/iso639.htm
	http://www.oasis-open.org/cover/iso639a.html
	See also
	http://oss.software.ibm.com/cvs/icu/~checkout~/icuhtml/design/language_code_issues.html
	http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.10
	
ISO 3166
http://mitglied.lycos.de/buran/knowhow/codes/locales/
!
