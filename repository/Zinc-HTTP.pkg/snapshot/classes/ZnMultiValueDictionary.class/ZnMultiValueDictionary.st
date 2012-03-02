
Dictionary subclass: #ZnMultiValueDictionary
	instanceVariableNames: 'limit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Support'!

!ZnMultiValueDictionary commentStamp: 'SvenVanCaekenberghe 1/2/2012 19:41' prior: 0!
I am ZnMultiValueDictionary. 
I am a Dictionary.

I offer an #at:add: method to transparently create Array valued multi entries when needed.
My #keysAndValuesDo: is overwritten to transparently deal with multi entries.
I normally limit the number of entries to protect me from resource abuse.

Note that most other methods will show the actual value.

Part of Zinc HTTP Components.!
