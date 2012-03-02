
!MCVersionReader methodsFor: 'accessing'!
package
	package ifNil: [self loadPackage].
	^ package! !
