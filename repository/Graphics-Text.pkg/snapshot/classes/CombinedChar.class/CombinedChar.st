
Object subclass: #CombinedChar
	instanceVariableNames: 'codes combined'
	classVariableNames: 'Compositions Decompositions Diacriticals'
	poolDictionaries: ''
	category: 'Graphics-Text'!

!CombinedChar commentStamp: 'StephaneDucasse 3/27/2010 21:50' prior: 0!
Compositions classVar is a:
<Dictionary
       key: firstLetter charCode
       value: (Dictionary
             	  key: diacritical charCode
              	 value: combined charCode)>
	
combined instVar is a <Character>!
