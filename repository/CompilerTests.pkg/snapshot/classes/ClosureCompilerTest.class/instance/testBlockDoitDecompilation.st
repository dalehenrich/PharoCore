
!ClosureCompilerTest methodsFor: 'tests'!
testBlockDoitDecompilation
	"Tests that decompile of a doit block with remote vars executes correcly"
	"Tests that decompilation of a Block, when 'method' of block is equivalent to that compiled by a DoIt, preserves the temp names "
	
	|blockSourceStream methodNode compiledMethod block decompiledBlock|
	blockSourceStream := '|x y| [:a :b | x := a. y := b. x + y]' readStream.
	methodNode := nil class evaluatorClass new 
						from: blockSourceStream class: nil class context: nil notifying: nil;
						translate: blockSourceStream noPattern: true ifFail: [nil].
	compiledMethod := methodNode generateWithTempNames.
	block := nil withArgs: #() executeMethod: compiledMethod.
	
	self shouldnt: [decompiledBlock := block decompile] raise: Error.
	self assert: '{[:a :b | 
x := a.
	y := b.
	x + y]}' equals: decompiledBlock printString
! !
