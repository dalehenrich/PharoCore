
SettingDeclaration subclass: #RangeSettingDeclaration
	instanceVariableNames: 'range'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Settings-Core'!

!RangeSettingDeclaration commentStamp: 'alain.plantec 4/7/2009 23:03' prior: 0!
A RangeSettingValue is a setting for which the value domain is an interval.  See SettingManager comment for more explanations.

Instance Variables
	range:		<Interval>

range
	- The interval which define the value domain
!
