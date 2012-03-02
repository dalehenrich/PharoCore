
TextDiffBuilder subclass: #ClassDiffBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-FilePackage'!

!ClassDiffBuilder commentStamp: 'HenrikSperreJohansen 5/21/2010 02:06' prior: 0!
I'm like TextDiffBuilder, but I split the input text by Character >> #separators, instead of new lines. 
I'm probably ment to create diffs of class definitions.!
