
Object subclass: #URIAuthority
	instanceVariableNames: 'host port userInfo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-URI'!

!URIAuthority commentStamp: 'StephaneDucasse 4/2/2010 21:52' prior: 0!
A URIAuthority is part of a hierarchical URI.  A hierarchical URI  hierarchical URI is subject to further parsing according to the syntax
	[scheme:][//authority][path][?query][#fragment]
where the characters :, /, ?, and # stand for themselves. The scheme-specific part of a hierarchical URI consists of the characters between the scheme and fragment parts.!
