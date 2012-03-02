
Socket subclass: #HTTPSocket
	instanceVariableNames: 'headerTokens headers responseCode'
	classVariableNames: 'HTTPBlabEmail HTTPProxyCredentials HTTPProxyExceptions HTTPProxyPort HTTPProxyServer ParamDelimiters'
	poolDictionaries: ''
	category: 'Network-Protocols'!

!HTTPSocket commentStamp: '<historical>' prior: 0!
HTTPSockets support HTTP requests, either directly or via an HTTP proxy server. An HTTPSocket saves the parse of the last ASCII header it saw, to avoid having to parse it repeatedly.

The real action is in httpGet:accept:.  See the examples in the class, especially httpFileInNewChangeSet: and httpShowGif:.!
