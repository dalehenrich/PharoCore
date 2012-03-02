
!HostSystemMenusMacOSX methodsFor: 'translation'!
resolveStyle: aStyle
	| string |
	
	string := String new.
	aStyle do: [:s |
			string := string,'<'.
			s = #bold ifTrue: [string := string,'B'].
			s = #italic ifTrue: [string := string,'I'].
			s = #underline ifTrue: [string := string,'U'].
			s = #outline ifTrue: [string := string,'O'].
			s = #shadow ifTrue: [string := string,'S']].
	^string.
! !
