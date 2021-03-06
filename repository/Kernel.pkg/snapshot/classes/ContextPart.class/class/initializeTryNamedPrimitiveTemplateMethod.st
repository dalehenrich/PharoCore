
!ContextPart class methodsFor: 'simulation'!
initializeTryNamedPrimitiveTemplateMethod
	| methodNode |
	methodNode := Compiler new
				compile: 'tryNamedPrimitive
	"This method is a template that the Smalltalk simulator uses to 
	execute primitives. See Object documentation whatIsAPrimitive."
	<primitive:'' module:''>
	^ ContextPart primitiveFailToken'
				in: UndefinedObject
				classified: nil
				notifying: #()
				ifFail: [ self error: 'method source is incorrect'. ].
	TryNamedPrimitiveTemplateMethod := (CompiledMethodWithNode generateMethodFromNode: methodNode trailer: CompiledMethodTrailer empty) method.



	! !
