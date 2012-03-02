
MorphTreeModel subclass: #MessageListBrowser
	instanceVariableNames: 'model textArea preference'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RecentSubmissions-UI'!

!MessageListBrowser commentStamp: 'BenjaminVanRyseghem 8/31/2010 01:43' prior: 0!
MessageListBrowser is the UI for instances of MessageList

Instance Variables:
	messageList	<Object>
	dictionary	<BrowserEnvironment | Dictionary | OpenFileStreamRegistry | RBSmallDictionary | SharedPool class | SmallDictionary | SmalltalkImage | WeakRegistry>
	originalList	<ProtoObject | PseudoContext>
	selectedMorph	<Object>
	treeMorph	<MorphTreeMorph>
	textArea	<CodeMorph | OBPluggableTextMorphWithShout | PluggableShoutMorph | PluggableTextMorphPlus>
	dropList	<ProtoObject | PseudoContext>
	preference	<Object>
	sortingSelector	<ProtoObject | PseudoContext>!
