
TextConverter subclass: #UTF8TextConverter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Multilingual-TextConversion'!

!UTF8TextConverter commentStamp: '<historical>' prior: 0!
Text converter for UTF-8.  Since the BOM is used to distinguish the MacRoman code and UTF-8 code, BOM is written for UTF-8 by #writeBOMOn: which is called by client.!
