
EditableDropListMorph subclass: #SearchMorph
	instanceVariableNames: 'maxSize currentCompletionIndex updateSelector keystrokeSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!SearchMorph commentStamp: 'CamilloBruni 8/4/2011 14:39' prior: 0!
I am a searchfield with a dropdown for the history. It is a minor extension to the EditableDropListMorph managing the search history directly in the morph. 

Typical use-case:

	^ SearchMorph new
		model: self;
		setIndexSelector: #classSearchAccept:; "sends the search result to the model"
		searchList: self class classSearchList; "sent on creation to get the initial search list"
		yourself
	
	!
