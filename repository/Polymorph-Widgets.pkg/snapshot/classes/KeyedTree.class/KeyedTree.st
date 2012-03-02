
Dictionary subclass: #KeyedTree
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!KeyedTree commentStamp: '<historical>' prior: 0!
Provides path based access to elements contained in the receiver and any subtrees.

Example:

(KeyedTree new
	at: 1 put: 'One';
	at: 2 put: 'Two';
	at: 'Tree' put: (KeyedTree new
					at: $a put: 'Tree-A';
					at: $b put: 'Tree-B';
					yourself);
	yourself) atPath: #('Tree' $b)!
