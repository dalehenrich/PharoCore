
ProtocolClient subclass: #TelnetProtocolClient
	instanceVariableNames: 'responseCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Protocols'!

!TelnetProtocolClient commentStamp: 'mir 5/12/2003 18:06' prior: 0!
Abstract super class for protocol clients based on the generic telnet protocol "<response code> <response>"

Structure:
	responseCode	the numerical (integer) value of the last response code
!
