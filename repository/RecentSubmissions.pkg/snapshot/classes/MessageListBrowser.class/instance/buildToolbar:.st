
!MessageListBrowser methodsFor: 'items creation'!
buildToolbar: aWindow
	"create the buttons toolbar"
	
	| toolbar |
	toolbar := aWindow newToolbar: {
		self buildDisplayDropList: aWindow.
		self buildButtonBrowse.
		self buildButtonRevert.
		self buildButtonRemove.
		self buildButtonClear.
		self buildPreferenceDropList: aWindow.}.
	^toolbar hResizing: #shrinkWrap! !
