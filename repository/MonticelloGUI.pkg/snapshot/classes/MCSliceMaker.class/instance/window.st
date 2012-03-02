
!MCSliceMaker methodsFor: 'user interface'!
window
	| sliceInfoRow buttonsRow okBtn cancelBtn issueNumberEntry issueSummaryEntry tree treeMorph |
	window := StandardWindow new model: self. 
	window title: ' Slice Maker' translated.
	issueNumberEntry := window
				newAutoAcceptTextEntryFor: self info
				get: #issueNumber
				set: #issueNumber:
				class: String
				getEnabled: nil
				help: 'Google project issue number' translated.
	issueNumberEntry hResizing: #rigid.
	issueNumberEntry
		width: (StandardFonts defaultFont widthOfString: 'Issue number0').
	issueNumberEntry ghostText: 'Issue number'.
	issueSummaryEntry := window window 
				newAutoAcceptTextEntryFor: self info
				get: #issueSummary
				set: #issueSummary:
				class: String
				getEnabled: nil
				help: 'An identification label for the slice. Just copy-paste the Google issue Summary here' translated.
	issueSummaryEntry ghostText: 'Just paste the issue summary here'.
	sliceInfoRow := PanelMorph new changeTableLayout; cellInset: 10 @ 4; layoutInset: 4 @ 4; listDirection: #leftToRight; hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	sliceInfoRow addAllMorphs: {issueNumberEntry. window newLabel: '-'. issueSummaryEntry}.
	buttonsRow := PanelMorph new changeTableLayout; cellInset: 10 @ 4; layoutInset: 4 @ 4; listDirection: #rightToLeft; hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	okBtn := window newOKButtonFor: self  getEnabled: #okUnabled.
	cancelBtn := window newCancelButtonFor: self.
	okBtn isDefault: true.
	self info addDependent: okBtn.
	buttonsRow addAllMorphs: {cancelBtn. okBtn}.
	window
		addMorph: sliceInfoRow
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (0 @ 0 corner: 0 @ sliceInfoRow height)).
	tree := MorphTreeModel new 
		rootItems: self rootItems;
		beCheckList;
		autoMultiSelection: true;
		wrapBlockOrSelector:  #packageName;
		headerLabel: 'Dirty Packages to be included in the slice';
		yourself.
	tree onSelectionChangeSend:  #selectionChanged: to: self. 
	treeMorph := tree defaultTreeMorph buildContents; 
		selectAll; 
		"hResizing: #spaceFill;"
		vResizing: #spaceFill;
		yourself.
	window
		addMorph: treeMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ sliceInfoRow height corner: 0 @ buttonsRow height negated)).
	window
		addMorph: buttonsRow
		fullFrame: (LayoutFrame
				fractions: (0 @ 1 corner: 1 @ 1)
				offsets: (0 @ buttonsRow height negated corner: 0 @ 0)).
	^ window! !
