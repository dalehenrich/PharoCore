
!AbstractTool methodsFor: 'method'!
fileOutMethods: aCollection

	Cursor write 
		showWhile:[
			aCollection
				ifNotEmpty: [:methods |
					 methods do: [:method |
						method methodClass fileOutMethod: method selector ]]]! !
