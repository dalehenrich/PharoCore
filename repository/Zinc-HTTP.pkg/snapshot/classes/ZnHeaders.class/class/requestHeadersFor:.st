
!ZnHeaders class methodsFor: 'instance creation'!
requestHeadersFor: url
	| headers |
	headers := self defaultRequestHeaders.
	headers request: url.
	^ headers! !
