
IdentityDictionary subclass: #SystemDictionary
	instanceVariableNames: 'cachedClassNames cachedNonClassNames'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Support'!

!SystemDictionary commentStamp: 'nice 3/6/2010 21:56' prior: 0!
I represent a special dictionary used as global namespace for class names :

	Smalltalk globals classNames.

and for traits too:

	Smalltalk globals traitNames.
	
and a few other globals:

	(Smalltalk globals keys reject: [:k | (Smalltalk globals at: k) isBehavior])
			collect: [:k | k -> (Smalltalk globals at: k) class].

As the above example let you guess, the global namespace of Smalltalk system is accessed through:

	Smalltalk globals.!
