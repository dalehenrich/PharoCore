
OrientedFillStyle subclass: #BitmapFillStyle
	instanceVariableNames: 'form tileFlag'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Balloon-Fills'!

!BitmapFillStyle commentStamp: '<historical>' prior: 0!
A BitmapFillStyle fills using any kind of form.

Instance variables:
	form	<Form>	The form to be used as fill.
	tileFlag	<Boolean>	If true, then the form is repeatedly drawn to fill the area.!
