
Object subclass: #SyntaxError
	instanceVariableNames: 'contents class selector category debugger doitFlag dependents location error'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Debugger'!

!SyntaxError commentStamp: '<historical>' prior: 0!
I represent syntax error report for syntax errors encountered when filing in class descriptions from a non-interactive source such as an external file. As a StringHolder, the string to be viewed is the method code or expression containing the error.

The user may fix the error and accept the method to continue the fileIn.
!
