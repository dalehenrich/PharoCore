
!CodeHolder methodsFor: 'controls'!
contentsSymbolQuints
	"Answer a list of quintuplets representing information on the alternative views available in the code pane
		first element:	the contentsSymbol used
		second element:	the selector to call when this item is chosen.
		third element:	the selector to call to obtain the wording of the menu item.
		fourth element:	the wording to represent this view
		fifth element:	balloon help
	A hypen indicates a need for a seperator line in a menu of such choices"

	^ #(
(source			togglePlainSource 			showingPlainSourceString	'Source'		'The textual source code as writen')
(documentation	toggleShowDocumentation	showingDocumentationString	'Documentation'		'The first comment in the method')
-
(prettyPrint		togglePrettyPrint 			prettyPrintString			'PrettyPrint'			'The method source presented in a standard text format')
-
(showDiffs		toggleRegularDiffing		showingRegularDiffsString	'ShowDiffs'				'The textual source diffed from its prior version')
(prettyDiffs		togglePrettyDiffing			showingPrettyDiffsString	'PrettyDiffs'		'Formatted textual source diffed from formatted form of prior version')
-
(decompile		toggleDecompile				showingDecompileString		'Decompile'			'Source code decompiled from byteCodes')
(byteCodes		toggleShowingByteCodes		showingByteCodesString		'ByteCodes'			'The bytecodes that comprise the compiled method'))! !
