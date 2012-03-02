
!FlatMessageListBrowser methodsFor: 'initialization'!
registerToEvents

	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #method using: #methodEvent:.! !
