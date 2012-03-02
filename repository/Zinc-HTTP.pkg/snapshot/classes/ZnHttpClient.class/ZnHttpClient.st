
ZnUserAgent subclass: #ZnHttpClient
	instanceVariableNames: 'url params headers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Deprecated'!

!ZnHttpClient commentStamp: 'SvenVanCaekenberghe 10/4/2011 19:02' prior: 0!
I implement an HTTP client with a high level API.

DEPRECATED: Please use ZnNeoClient

Some examples of my use:

response := ZnHttpClient new
	url: 'somedomain.com';
	auth: 'joe' password: 'secret';
	parameterAt: 'name' put: 'joe';
	headerAt: 'X-Custom Header' put: 'woot';
	get.
	 !
