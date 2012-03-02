
ShortIntegerArray variableWordSubclass: #ShortPointArray
	uses: TPointAccess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Balloon-Collections'!

!ShortPointArray commentStamp: '<historical>' prior: 0!
This class stores points that are in short integer range (e.g., -32767 <= value <= 32768). It is used to pass data efficiently to the primitive level during high-bandwidth 2D graphics operations.!
