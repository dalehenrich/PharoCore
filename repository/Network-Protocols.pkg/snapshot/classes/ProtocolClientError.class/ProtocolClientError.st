
Error subclass: #ProtocolClientError
	instanceVariableNames: 'protocolInstance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Protocols'!

!ProtocolClientError commentStamp: 'mir 5/12/2003 18:05' prior: 0!
Abstract super class for protocol clients

	protocolInstance		reference to the protocol client throughing the exception. Exception handlers can access the client in order close, respond or whatever may be appropriate
!
