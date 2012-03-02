
TempVariableNode subclass: #RemoteTempVectorNode
	instanceVariableNames: 'remoteTemps readNode writeNode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'!

!RemoteTempVectorNode commentStamp: '<historical>' prior: 0!
I am a node for a vector of remote temps, created to share temps between closures when those temps are written to in closures other than their defining ones.!
