
Object subclass: #Finder
	instanceVariableNames: 'searchingString selectedMethod selectedClass packagesSelection currentSearchMode environment resultDictionary useRegEx'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder'!

!Finder commentStamp: 'BenjaminVanRyseghem 9/15/2010 11:17' prior: 0!
I'm the finderUI model in the MVC pattern.

I'm compute the search string and I construct a resultDictionary.
Then I throw events everywhere and my views are redrawn.!
