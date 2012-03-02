
MultipleSettingDeclaration subclass: #PickOneSettingDeclaration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Settings-Core'!

!PickOneSettingDeclaration commentStamp: 'AlainPlantec 1/3/2011 10:53' prior: 0!
A CheckListSettingDeclaration is a setting for which the value domain is a list. Each element of the list is an instance of FixedSettingValue. If domainValues is set, then the list of valid values is constant (initialized at declaration time). Instead, if getter is set, then the setting list is always dynamically computed. See SettingManager comment for more explanations. 

Instance Variables
!
