
!MetacelloConfigurationBrowser methodsFor: 'defaults'!
pharoDistribution
	"Returns the correct pharo distribution url"
	
	^'http://www.squeaksource.com/MetaRepoFor', ((SystemVersion current majorMinorVersion) copyWithRegex: '[.-]' matchesReplacedWith: '').  
	
	! !
