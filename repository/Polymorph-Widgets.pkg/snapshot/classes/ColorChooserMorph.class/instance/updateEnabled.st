
!ColorChooserMorph methodsFor: 'as yet unclassified'!
updateEnabled
	"Update the enablement state."

	self model ifNotNil: [
		self getEnabledSelector ifNotNil: [
			self enabled: (self model perform: self getEnabledSelector)]]! !