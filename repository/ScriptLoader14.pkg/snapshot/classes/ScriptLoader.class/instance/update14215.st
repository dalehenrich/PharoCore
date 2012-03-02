
!ScriptLoader methodsFor: 'pharo - updates'!
update14215
	"self new update14215"
	self withUpdateLog: '
- Issue 4957:	Let asScaledDecimal use the right number of decimals
	Thanks nicolas cellier. http://code.google.com/p/pharo/issues/detail?id=4957
	
	Change the policy for conversions to ScaledDecimal. Always honour the number of decimal places (scale) passed as argument to asScaledDecimal:

When no scale is passed, uses strictly necessary number of decimal places if the number is exact (not Float) and if a finite decimal representation exists.
Otherwise uses the default of 8 decimal places.

This makes more sense IMO than previous implementation. Integer version was screwing the user by not fulfiling the requested number of decimal places, I can t believe it was the right interpretation of the ANSI standard.... Or someone gives me a good rationale.

-  Issue 4964:	Number nthRoot: should be subclassResponsibility. Thanks nicolas cellier. 
	http://code.google.com/p/pharo/issues/detail?id=4964
	
-  Issue 4951:	The version menu in the diff tool does not work. Thanks nicolas cellier. 
	http://code.google.com/p/pharo/issues/detail?id=4951

-  Issue 3197:	Make Character class>>separators and Character class>>allByteCharacters return strings instead of Arrays.
		Thanks nicolas cellier, Andreas raab, and vonbecmann. 
	http://code.google.com/p/pharo/issues/detail?id=3197
	
	

'.
	self loadTogether: self script478 merge: false.
	self flushCaches.
! !
