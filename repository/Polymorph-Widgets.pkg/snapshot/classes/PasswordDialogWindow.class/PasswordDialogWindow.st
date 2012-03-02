
TextEntryDialogWindow subclass: #PasswordDialogWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!PasswordDialogWindow commentStamp: 'LaurentLaffont 4/15/2011 20:17' prior: 0!
I'm a Dialog whose TextEditors characters are replaced by *. 

Example:
(UITheme builder openModal: 
        (PasswordDialogWindow new
                title: 'Authentification';
                textFont: StandardFonts defaultFont;
                text: 'Enter your password')) entryText explore!
