
Object subclass: #TextConverter
	instanceVariableNames: 'latin1Map latin1Encodings'
	classVariableNames: ''
	poolDictionaries: 'EventSensorConstants'
	category: 'Multilingual-TextConversion'!

TextConverter class
	instanceVariableNames: 'latin1Map latin1Encodings'!

!TextConverter commentStamp: '<historical>' prior: 0!
The abstract class for all different type of text converters.  nextFromStream: and nextPut:toStream: are the public accessible methods.  If you are going to make a subclass for a stateful text conversion, you should override restoreStateOf:with: and saveStateOf: along the line of CompoundTextConverter.
!
