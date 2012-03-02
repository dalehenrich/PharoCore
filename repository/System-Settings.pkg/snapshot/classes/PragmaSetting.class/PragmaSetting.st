
Object subclass: #PragmaSetting
	instanceVariableNames: 'precondition target targetSelector name label description order icon ordering dialog allowedInStyle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Settings-Core'!

!PragmaSetting commentStamp: 'AlainPlantec 1/3/2011 10:54' prior: 0!
A PragmaSetting is a holder for a setting. A setting is declared in a class method which contains a pragma (as examples, <menu> or <setting>). 
Settings can be collected on the fly by a PragmaCollector and browsed by a SettingBrowser. Settings are organized in trees.

Instance Variables
	allowedInStyle:		<Object>
	description:		<Object>
	dialog:		<Object>
	icon:		<Object>
	label:		<Object>
	name:		<Object>
	order:		<Object>
	ordering:		<Object>
	precondition:		<Object>
	target:		<Object>
	targetSelector:		<Object>

allowedInStyle
	- xxxxx

description
	- xxxxx

dialog
	- xxxxx

icon
	- xxxxx

label
	- xxxxx

name
	- xxxxx

order
	- xxxxx

ordering
	- xxxxx

precondition
	- xxxxx

target
	- xxxxx

targetSelector
	- xxxxx
!
