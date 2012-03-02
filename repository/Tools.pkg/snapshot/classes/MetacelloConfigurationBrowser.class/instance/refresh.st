
!MetacelloConfigurationBrowser methodsFor: 'actions'!
refresh
	|repo reductionMap split configName  author version last topMostItems item |
	repo := MCHttpRepository 
				location: self repository				
				user: '' 
				password: ''.
				
	"Reduce to display only the latest"			
	reductionMap := Dictionary new.	
	repo allVersionNames reverse do: [:each |				 
		split := each findTokens: '-.'.
		configName := split first.
		author := split second. 
		version := Integer readFrom: split last.
		last := reductionMap at: configName ifAbsentPut: [ author -> version].
		version > last value ifTrue: [
			reductionMap at: configName put: (author -> version).
		]
	].
	topMostItems := SortedCollection sortBlock: [:e1 :e2 | e1 asString <= e2 asString].
	reductionMap keysAndValuesDo: [:key :val | 
		item := key, '-', val key, '.', val value asString.
		topMostItems add: (PluggableListItemWrapper with: item)].	
		
	"Set as list contents"	
	configTree list: topMostItems.
	window title: self repository.! !
