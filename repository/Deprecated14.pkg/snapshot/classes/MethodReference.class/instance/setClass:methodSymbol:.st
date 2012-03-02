
!MethodReference methodsFor: 'setting'!
setClass: aClass methodSymbol: methodSym

	classSymbol := aClass theNonMetaClass name.
	classIsMeta := aClass isMeta.
	methodSymbol := methodSym.
	stringVersion := aClass name , ' ' , methodSym.! !
