
!MailComposition methodsFor: 'interface'!
menuGet: aMenu shifted: shifted
	
	aMenu addList: {
		{'Find...(f)' translated.		#find}.
		{'Find again (g)' translated.		#findAgain}.
		{'Set search string (h)' translated.	#setSearchString}.
			#-.
		{'Accept (s)' translated. #accept}.
		{'Send message' translated.  #submit}}.

	^aMenu.! !
