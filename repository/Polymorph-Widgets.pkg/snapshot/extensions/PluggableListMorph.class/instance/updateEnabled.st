
!PluggableListMorph methodsFor: '*Polymorph-Widgets'!
updateEnabled
	"Update the enablement state."

	self model ifNotNil: [
		self getEnabledSelector ifNotNil: [
			self enabled: (self model perform: self getEnabledSelector)]]! !
