
SettingFilter subclass: #SettingPackageFilter
	instanceVariableNames: 'packages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Settings-Filter'!

!SettingPackageFilter commentStamp: 'AlainPlantec 12/31/2010 11:38' prior: 0!
A SettingPackageFilter is a SettingFilter used to select settings from a given list of packages: a setting is kept only if the package in which it is defined is present in the given package list

Instance Variables
	packages:		<Collection>

packages
	- The collection of PackageInfo the filter is currently using!
