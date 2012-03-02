
!InputEventSensorSystemSettings class methodsFor: 'settings'!
inputEventSensorSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #keyboard) 
		parent: #pharoSystem;
		label: 'Keyboard' translated;
		description: 'Keyboard handling' translated; 
		with: [ 
			(aBuilder pickOne: #controlAltKeyDecodePolicy)
				label: 'Control and Alt keys' translated;
				description: 'Set how Control and Alt key are handled:
o Full matching - duplicates all alt- keys as ctrl-keys (making ctrl-c be copy as well as alt-c).
o Partial matching - duplicates some alt- keys as ctrl- keys (making ctrl-c be copy as well as alt-c).
o Swapped - swaps some control- and alt-keys (making ctrl-c be copy instead of alt-c). 
o Handled apart - no special handling, ctrl and alt are considered apart.' translated;
				target: InputEventSensor;
				domainValues: {'Full matching' translated -> #FullMatching.  
					'Partial matching' translated -> #PartialMatching. 
					'Swapped' translated -> #Swapped. 
					'Handled apart' translated -> #NoMatching}.
		]! !
