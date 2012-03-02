
!MCWorkingCopy methodsFor: 'accessing'!
description
	^ self packageNameWithStar, ' (', (ancestry ancestorStringWithout: self packageName), ')'! !
