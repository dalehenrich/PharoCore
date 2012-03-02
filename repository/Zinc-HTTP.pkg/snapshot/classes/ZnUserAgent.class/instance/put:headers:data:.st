
!ZnUserAgent methodsFor: 'operations'!
put: urlObject headers: headerCollection data: dataEntity
	^ self method: #PUT for: urlObject headers: headerCollection data: dataEntity! !
