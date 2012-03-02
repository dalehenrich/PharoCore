
!CompiledMethod methodsFor: 'source code management'!
dropSourcePointer
	"When receiver is deinstalled from its class, its not managed anymore by development tools
	and it's hard to predict, how long a method could stay in the image, because if it contains blocks,
	they could still reference it. 
	Therefore we trying to preserve as much as we can , actually by embedding the method's source code into its trailer
	"
	self trailer hasSourcePointer ifTrue: [
		self becomeForward: 
			(self copyWithTrailerBytes: 
				(CompiledMethodTrailer new sourceCode: self getSource))]
! !
