
Object subclass: #BuiltinSettingStyle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Deprecated14'!

!BuiltinSettingStyle commentStamp: 'AlainPlantec 9/14/2011 14:34' prior: 0!
A BuiltinSettingStyle provides a mean to store the state of all system settings according to specific user preferences and/or to some particular using (demonstration style with big fonts, laptop/desktop used at home or at work ...). The only behavior of a style is implemented by its load method. Thus, a style can be loaded programmatically as follow:
------------------
MyStyle new loadStyle
------------------
Where MyStyle is a subclass of BuiltinSettingStyle which can implement a load method as below:
------------------
MyStyle>>load
	"load change a set of settings with some prefered value"
	MorphicSettings haloEnabled value: true.
	...
------------------
So, a style is simply a class with a loadStyle method. In order for a style class to be recognized as such by the setting browser, a class method #styleName must be implemented as follow:
------------------
styleName
	<settingstyle>
	^ 'My cool style'
------------------
This method must be tagged with the pragma	<settingstyle> and returns the name of the style.
!
