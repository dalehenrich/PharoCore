
PopupChoiceDialogWindow subclass: #PopupChoiceDialogWindowWithMessage
	instanceVariableNames: 'textMorph iconMorph textFont message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!PopupChoiceDialogWindowWithMessage commentStamp: 'LaurentLaffont 3/4/2011 22:43' prior: 0!
I'm a dialog which ask the user to select a element in a list. See me in action:

UIManager default inform:
        (UIManager default 
                chooseFrom: #(one two three) 
                values: #('1' '2' '3')  
                message: 'Select one' 
                title: 'PopupChoiceDialogWindowWithMessage example').!
