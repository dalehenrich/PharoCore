
Object subclass: #SettingFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Settings-Filter'!

!SettingFilter commentStamp: 'alain.plantec 4/8/2009 12:51' prior: 0!
A SettingFilter is a filter wich is used by a SettingBrowser in order to select which nodes of the setting trees are to be shown. A SettingFilter subclass must redefine the #keepHandler: method which return true if the argument handler is to be kept.

Instance Variables
!
