
Error subclass: #ZnHttpUnsuccessful
	instanceVariableNames: 'response'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Exceptions'!

!ZnHttpUnsuccessful commentStamp: 'SvenVanCaekenberghe 12/20/2011 12:52' prior: 0!
ZnHttpUnsuccessful is signalled when an HTTP client receives a non success response.

See ZnResponse>>#isSuccess

I hold the response that was unsuccessful.

Part of Zinc HTTP Components. !
