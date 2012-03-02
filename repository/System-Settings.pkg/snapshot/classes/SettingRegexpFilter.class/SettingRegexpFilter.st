
SettingFilter subclass: #SettingRegexpFilter
	instanceVariableNames: 'regexp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Settings-Filter'!

!SettingRegexpFilter commentStamp: 'alain.plantec 4/8/2009 13:02' prior: 0!
A SettingRegexpFilter is SettingFilter which makes use of a regular expression in order to keep or not a SettingHandler.

Instance Variables
	regexp:		<String>

regexp
	- a regular expression string
!
