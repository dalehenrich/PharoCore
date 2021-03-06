
!StringTest methodsFor: 'tests - converting'!
testUnescapePercents
	self assert: '' unescapePercents = ''.
	self assert: 'x' unescapePercents = 'x'.

	self assert: '+' unescapePercents = ' '.
	self assert: 'x+' unescapePercents = 'x '.
	self assert: '+x' unescapePercents = ' x'.
	self assert: 'x+x' unescapePercents = 'x x'.

	self assert: '%' unescapePercents = '%'.
	self assert: '%3' unescapePercents = '%3'.
	self assert: '%3C' unescapePercents = '<'.
	
	self assert: '%3Cx%3E4%3C%2Fx%3E' unescapePercents = '<x>4</x>'.
	
	self assert: '!!@#$%25%5E&*()%7B%7D%5B%5D=:/;?+''%22' unescapePercents  = '!!@#$%^&*(){}[]=:/;? ''"'.
	self assert: '!!%40%23%24%25%5E%26*()%7B%7D%5B%5D%3D%3A%2F%3B%3F%2B''%22' unescapePercents  = '!!@#$%^&*(){}[]=:/;?+''"'.
	self assert: '%21@%23%24%25%5E%26*%28%29%7B%7D%5B%5D%3D%3A/%3B%3F+%27%22' unescapePercents = '!!@#$%^&*(){}[]=:/;? ''"'! !
