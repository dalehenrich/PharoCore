
TextDiffBuilder subclass: #PrettyTextDiffBuilder
	instanceVariableNames: 'sourceClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-FilePackage'!

!PrettyTextDiffBuilder commentStamp: 'HenrikSperreJohansen 5/21/2010 01:42' prior: 0!
I'm like TextDiffBuilder, but I use the pretty-printed version of the source code if available.

Instance Variables
	sourceClass:		<Class>

sourceClass
	- this class provides the pretty-printer
!
