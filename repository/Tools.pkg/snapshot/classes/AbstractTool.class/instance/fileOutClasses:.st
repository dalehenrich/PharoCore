
!AbstractTool methodsFor: 'class'!
fileOutClasses: aCollection
	"Print a description of the selected class onto a file whose name is the 
	category name followed by .st."

	Cursor write 
		showWhile: [
			aCollection
				ifNotEmpty: [
					aCollection do: [:class | class theNonMetaClass fileOut ]]]! !
