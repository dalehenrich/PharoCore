
!WindowAnnouncementTest methodsFor: 'window creation and deletion'!
testWindowLabelling
	"Test change of label for a window."
	
	|labels win|
	labels := #().
	World announcer on: WindowLabelled do: [:ann | win := ann window. labels := labels copyWith: ann label].
	window := SystemWindow labelled: 'foo'.
	window openInWorld.
	self assert: win = window.
	self assert: labels = #('foo').
	window setLabel: 'bar'.
	self assert: win = window.
	self assert: labels = #('foo' 'bar')! !
