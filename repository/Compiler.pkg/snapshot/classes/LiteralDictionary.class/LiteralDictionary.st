
Dictionary subclass: #LiteralDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-Support'!

!LiteralDictionary commentStamp: '<historical>' prior: 0!
A LiteralDictionary, like an IdentityDictionary, has a special test for equality.  In this case it is simple equality between objects of like class.  This allows equal Float or String literals to be shared without the possibility of erroneously sharing, say, 1 and 1.0!
