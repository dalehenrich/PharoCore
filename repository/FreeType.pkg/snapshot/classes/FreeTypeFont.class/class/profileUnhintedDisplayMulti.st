
!FreeTypeFont class methodsFor: 'profiling'!
profileUnhintedDisplayMulti
	"
	self profileUnhintedDisplayMulti
	"
	| t f m text canvas |
	FreeTypeSettings current hintingSymbol: #None.
	FreeTypeSettings current hintingSymbol: #Light. "cache is now clear"
	t := TextStyle named: #DefaultTextStyle.
f := t fontOfPointSize: 12.
m := TextMorph new.
m width: 200; height: 200.
m backgroundColor: Color white.
text :=  ('Welcome to the finale version of 3.9 of 7 of November 2006

You will find more recent versions at http://www.squeak.org/
This image will be used to produce other distributions such as a developer image and a fun with Squeak image. 

We hope that you will really appreciate this version and that Squeak will help you making your projects reality.

You can also participate to Squeak at different kinds of levels. This can be as simple as:	
	- asking questions in the beginner list (beginners@lists.squeakfoundation.org) 
		or in the dev list (squeak-dev@lists.squeakfoundation.org)	
	- answering questions 	
	- finding and reporting bugs at:		http://bugs.impara.de
	- fixing them, testing fixes and commenting them
	- writing tests for uncovered parts	
	- helping for the website
	- creating new cool products, frameworks, applications in squeak
	- writing articles....
	
We wish you a lot of fun and we would like to thanks all the 
persons that participated to make this release a really good one.
We know who you are!!

	Stephane Ducasse and Marcus Denker
	stephane.ducasse@free.fr and denker@iam.unibe.ch' , 1000 asCharacter asString) asText.
text addAttribute: (TextFontReference toFont: f).
m contents: text.
m openInWorld.
canvas := (FormCanvas on: (Form extent: 1000@1000 depth: 32)).
Smalltalk tools timeProfiler onBlock: [
	2 timesRepeat: [m drawOn: canvas ]].
m delete
! !
