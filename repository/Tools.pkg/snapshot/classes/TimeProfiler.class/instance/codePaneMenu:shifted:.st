
!TimeProfiler methodsFor: 'as yet unclassified'!
codePaneMenu: aMenu shifted: shifted 
	"Note that unless we override perform:orSendTo:, 
	PluggableTextController will respond to all menu items in a 
	text pane"
	| donorMenu |
	donorMenu := shifted
				ifTrue: [SmalltalkEditor shiftedYellowButtonMenu]
				ifFalse: [SmalltalkEditor yellowButtonMenu].
	^ aMenu addAllFrom: donorMenu! !
