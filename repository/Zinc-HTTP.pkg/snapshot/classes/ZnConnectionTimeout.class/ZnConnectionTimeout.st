
DynamicVariable subclass: #ZnConnectionTimeout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Support'!

!ZnConnectionTimeout commentStamp: 'SvenVanCaekenberghe 6/18/2011 18:54' prior: 0!
I am ZnConnectionTimeout.
I am a DynamicVariable and a ProcessSpecificVariable.

I can be used to modify the global default socket IO timeout on a per process basis, for example:

ZnConnectionTimeout value: 5 seconds during: [ ZnClient get: 'http://zn.stfx.eu/zn/small.html' ]!
