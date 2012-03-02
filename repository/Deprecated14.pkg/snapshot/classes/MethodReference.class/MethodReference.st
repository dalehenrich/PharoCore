
SourceReference subclass: #MethodReference
	instanceVariableNames: 'classIsMeta classSymbol methodSymbol stringVersion category package'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Deprecated14'!

!MethodReference commentStamp: 'Ben 10/23/2010 15:13' prior: 0!
A MethodReference is is a lightweight proxy for a CompiledMethod.  Has methods for pointed to the CompileMethod's source statements, byte codes. Is heavily used my Tools.

Instance Variables
	classIsMeta:		     Boolean class vs. instance
	classSymbol:		Symbol for method's class (without class keyword if meta)
	methodSymbol:		Symbol for method's selector
	stringVersion:		'Class>>selector:' format

!
