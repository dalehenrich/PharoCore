
!CodeHolder methodsFor: 'what to show'!
toggleDecompile
	"Toggle the setting of the showingDecompile flag, unless there are unsubmitted edits that the user declines to discard"

	| wasShowing |
	self okToChange ifTrue:
		[wasShowing := self showingDecompile.
		self showDecompile: wasShowing not.
		self setContentsToForceRefetch.
		self contentsChanged]

! !
