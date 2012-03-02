
Object subclass: #TextDiffBuilder
	instanceVariableNames: 'xLines yLines'
	classVariableNames: 'IgnoreLineEndings InsertTextAttributes NormalTextAttributes RemoveTextAttributes'
	poolDictionaries: ''
	category: 'System-FilePackage'!

!TextDiffBuilder commentStamp: 'HenrikSperreJohansen 5/21/2010 02:00' prior: 0!
I implement the diff algorithm. I can show the differences between two texts. See my method comments for further information.

Instance Variables
	xLines:		<Array>
	yLines:		<Array>

xLines
	- an Array of DiffElement which is created from the first input text

yLines
	- an Array of DiffElement which is created from the second input text!
