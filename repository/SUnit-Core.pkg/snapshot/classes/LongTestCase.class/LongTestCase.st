
TestCase subclass: #LongTestCase
	instanceVariableNames: ''
	classVariableNames: 'RunLongTestCases'
	poolDictionaries: ''
	category: 'SUnit-Core-Extensions'!

!LongTestCase commentStamp: 'DamirLaurent 5/2/2011 22:17' prior: 0!
I'm a TestCase which takes time to run. I can be disabled using #doNotRunLongTestCases and enabled again using #runLongTestCases.

Tests that are long should be subclasses of myself.

I also provide a setting for the SettingsBrowser!
