
ParseNode subclass: #CascadeNode
	instanceVariableNames: 'receiver messages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'!

!CascadeNode commentStamp: '<historical>' prior: 0!
The first message has the common receiver, the rest have receiver == nil, which signifies cascading.!
