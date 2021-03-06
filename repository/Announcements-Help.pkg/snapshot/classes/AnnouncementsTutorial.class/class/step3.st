
!AnnouncementsTutorial class methodsFor: 'pages'!
step3
	"This method was automatically generated. Edit it using:"
	"AnnouncementsTutorial edit: #step3"
	^HelpTopic
		title: 'Step 3 - More examples'
		contents: 
'In Pharo there is a global called "World" pointing to the desktop morph. This world also has an announcer we can use to demonstrate the features of the framework:

	| announcer |
	World announcer 
		on: WindowOpened 
		send: #value 
		to: [ Transcript show: ''A new window was opened'';cr].

So anytime a window is opened in the system a message is shown in the transcript:
		
	Transcript open.
	
	| announcer |
	World announcer 
		on: WindowOpened 
		send: #value 
		to: [:ea | ea inspect. Transcript show: ''A new window was opened'';cr].
!!' readStream nextChunkText! !
