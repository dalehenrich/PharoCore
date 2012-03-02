
!FlatMessageListBrowser methodsFor: 'items creation'!
buildToolbar: aWindow
	"create the buttons toolbar"
	
	| toolbar |
	toolbar := aWindow newToolbar: {
		self buildButtonBrowse.
		self buildButtonSenders.
		self buildButtonImplementors.
		self buildButtonVersion.
		self buildPreferenceDropList: aWindow}.
	^toolbar hResizing: #shrinkWrap! !
