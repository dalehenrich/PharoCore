
!MacFileDirectoryTest methodsFor: 'test'!
testMacIsAbsolute
	"(self selector: #testMacIsAbsolute) run"
	
	
	self deny: (MacFileDirectory isAbsolute: 'Volumes').
	self assert: (MacFileDirectory isAbsolute: 'Volumes:Data:Stef').
	self deny: (MacFileDirectory isAbsolute: ':Desktop:test.st')! !
