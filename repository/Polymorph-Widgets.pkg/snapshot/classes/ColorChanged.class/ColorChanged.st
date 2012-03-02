
Announcement subclass: #ColorChanged
	instanceVariableNames: 'newColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!ColorChanged commentStamp: 'LaurentLaffont 4/15/2011 20:19' prior: 0!
I'm a Announcement used to indicate a color has changed. 

Example:

(ColorSelectorDialogWindow new
                        title: 'Choose a color';
                        open;
                        announcer) on: ColorChanged  do: [:ann|
                                                                        UIManager inform: 'Selected color: ', ann newColor asString].!
