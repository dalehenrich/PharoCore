
LeafNode subclass: #VariableNode
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'!

!VariableNode commentStamp: '<historical>' prior: 0!
I am a parse tree leaf representing a variable. Note that my name and key are different for pool variables: the key is the Object Reference.!
