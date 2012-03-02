
!SystemProgressMorph methodsFor: 'initialize'!
initialize
	super initialize.
	activeSlots := 0.
	bars := Array new: 10.
	labels := Array new: 10.
	font := StandardFonts windowTitleFont.
	lock := Semaphore forMutualExclusion.
	self setDefaultParameters;
		setProperty: #morphicLayerNumber toValue: self morphicLayerNumber;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topCenter;
		cellInset: 5;
		listCentering: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 15@15;
		minWidth: 150! !
