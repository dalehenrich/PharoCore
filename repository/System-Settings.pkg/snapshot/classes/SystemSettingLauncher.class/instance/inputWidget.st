
!SystemSettingLauncher methodsFor: 'accessing'!
inputWidget
	^ (self theme  
				newButtonIn: World 
				for: self
				getState: nil
				action: #launch
				arguments: {}
				getEnabled: nil
				getLabel: nil
				help: self description)
		 		label: ( self theme  newRowIn: World for: {AlphaImageMorph new image: self theme smallRedoIcon. 
				self theme buttonLabelForText: 'Launch' translated});
		 		yourself.! !
