
Object subclass: #InternetConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Kernel'!

!InternetConfiguration commentStamp: 'LaurentLaffont 6/8/2011 22:17' prior: 0!
I read several parameters related to the default web browser network preferences, through the InternetConfigPlugin VM module.

For example, to get the default path where downloaded files should be placed:

InternetConfiguration getDownloadPath.

Seems to work only on MacOSX!
