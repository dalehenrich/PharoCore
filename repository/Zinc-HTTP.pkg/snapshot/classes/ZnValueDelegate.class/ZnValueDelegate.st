
Object subclass: #ZnValueDelegate
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Client-Server'!

!ZnValueDelegate commentStamp: 'SvenVanCaekenberghe 12/7/2010 16:14' prior: 0!
I am ZnValueDelegate.
I forward #handleRequest: messages to the object that I wrap using #value:

ZnServer default delegate: 
	(ZnValueDelegate with: [ :request | 
		ZnResponse ok: (ZnEntity with: 'You asked for ', request uri printString) ] ).

Part of Zinc HTTP Components.!
