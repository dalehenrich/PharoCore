
Object subclass: #ObjectStringConverter
	instanceVariableNames: 'objectClass regex stringTransformBlock objectTransformBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!ObjectStringConverter commentStamp: 'GaryChambers 3/9/2011 13:37' prior: 0!
Generic object<->string converter for use with PluggableTextFieldMorph.
Optional regex matching for validation.
Optional transform blocks for each conversion direction.!
