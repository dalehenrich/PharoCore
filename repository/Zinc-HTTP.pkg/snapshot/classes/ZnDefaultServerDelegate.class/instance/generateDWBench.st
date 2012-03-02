
!ZnDefaultServerDelegate methodsFor: 'private'!
generateDWBench
	"Generate the dynamic DW-Bench HTML page"
	
	^ String streamContents: [ :stream |
		stream << ZnConstants standardHtmlDocType.
		stream << '<html><head><title>DW-Bench Dynamic</title></head>'.
		stream << '<body><h1>DW-Bench Dynamic</h1><table border=1>'.
		1 to: 25 do: [ :row |
			stream nextPutAll: '<tr>'.
			1 to: 25 do: [ :col |
				stream nextPutAll: '<td>'; print: row * col; nextPutAll: '</td>' ].
			stream nextPutAll: '</tr>' ].
		stream nextPutAll: '</table><p>'; print: TimeStamp now; nextPutAll: '</p></body></html>' ]! !
