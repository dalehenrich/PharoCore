
!VirtualMachine class methodsFor: 'vm statistics'!
statisticsReport
	"Workspace openContents: (Smalltalk vm statisticsReport) label: 'VM Statistics'"

	| params oldSpaceEnd youngSpaceEnd memoryEnd fullGCs fullGCTime incrGCs incrGCTime tenureCount mcMisses mcHits icHits upTime sendCount upTime2 fullGCs2 fullGCTime2 incrGCs2 incrGCTime2 tenureCount2 str |
	params := self getParameters.
	oldSpaceEnd		:= self oldSpaceEnd.
	youngSpaceEnd		:= self youngSpaceEnd.
	tenureCount			:= self tenureCount.
	memoryEnd			:= self memoryEnd.
	fullGCs				:= self fullGCCount.
	fullGCTime			:= self totalFullGCTime.
	incrGCs				:= self incrementalGCCount.
	incrGCTime			:= self totalIncrementalGCTime.
 
	upTime := Time millisecondClockValue.
	str := (String new: 1000) writeStream.
	str	<< 'uptime			';
		print: (upTime / 1000 / 60 // 60); nextPut: $h;
		print: (upTime / 1000 / 60 \\ 60) asInteger; nextPut: $m;
		print: (upTime / 1000 \\ 60) asInteger; nextPut: $s; cr.

	str	<< 'memory			';
		<< memoryEnd asStringWithCommas; << ' bytes'; cr.
	str	<<	'	old			';
		<< oldSpaceEnd asStringWithCommas; << ' bytes (';
		print: ((oldSpaceEnd / memoryEnd * 100) roundTo: 0.1); << '%)'; cr.
	str	<< '	young		';
		<< (youngSpaceEnd - oldSpaceEnd) asStringWithCommas; << ' bytes (';
		print: ((youngSpaceEnd - oldSpaceEnd / memoryEnd * 100) roundTo: 0.1); << '%)'; cr.
	str	<< '	used		';
		<< youngSpaceEnd asStringWithCommas; << ' bytes (';
		print: ((youngSpaceEnd / memoryEnd * 100) roundTo: 0.1); << '%)'; cr.
	str	<< '	free		';
		<< (memoryEnd - youngSpaceEnd) asStringWithCommas; << ' bytes (';
		print: ((memoryEnd - youngSpaceEnd / memoryEnd * 100) roundTo: 0.1); << '%)'; cr.

	str	<< 'GCs				';
		<< (fullGCs + incrGCs) asStringWithCommas.
	fullGCs + incrGCs > 0 ifTrue: [
		str
			<< ' ('; 
			print: ((upTime / (fullGCs + incrGCs)) roundTo: 1); 
			<< 'ms between GCs)'
	].
	str cr.
	str	<< '	full			';
		print: fullGCs; << ' totalling '; << fullGCTime asStringWithCommas; << 'ms (';
		print: ((fullGCTime / upTime * 100) roundTo: 0.1);
		<< '% uptime)'.
	fullGCs = 0 ifFalse:
		[str	<< ', avg '; print: ((fullGCTime / fullGCs) roundTo: 0.1); << 'ms'].
	str	cr.
	str	<< '	incr		';
		print: incrGCs; << ' totalling '; << incrGCTime asStringWithCommas; << 'ms (';
		print: ((incrGCTime / upTime * 100) roundTo: 0.1);
		<< '% uptime), avg '; print: ((incrGCTime / incrGCs) roundTo: 0.1); << 'ms'; cr.
	str	<< '	tenures		';
		<< tenureCount asStringWithCommas.
	tenureCount = 0 ifFalse:
		[str << ' (avg '; print: (incrGCs / tenureCount) asInteger; << ' GCs/tenure)'].
	str	cr.

LastStats ifNil: [LastStats := Array new: 6]
ifNotNil: [
	upTime2 := upTime - (LastStats at: 1).
	fullGCs2 := fullGCs - (LastStats at: 2).
	fullGCTime2 := fullGCTime - (LastStats at: 3).
	incrGCs2 := incrGCs - (LastStats at: 4).
	incrGCTime2 := incrGCTime - (LastStats at: 5).
	tenureCount2 := tenureCount - (LastStats at: 6).

	str	<<  'Since last view	';
		<< (fullGCs2 + incrGCs2) asStringWithCommas.
	fullGCs2 + incrGCs2 > 0 ifTrue: [
		str
			<< ' ('; 
			print: ((upTime2 / (fullGCs2 + incrGCs2)) roundTo: 1); 
			<< 'ms between GCs)'.
	].
	str cr.
	str	<< '	uptime		'; print: ((upTime2 / 1000.0) roundTo: 0.1); << 's'; cr.
	str	<< '	full			';
		print: fullGCs2; << ' totalling '; << fullGCTime2 asStringWithCommas; << 'ms (';
		print: ((fullGCTime2 / upTime2 * 100) roundTo: 0.1);
		<< '% uptime)'.
	fullGCs2 = 0 ifFalse:
		[str	<< ', avg '; print: ((fullGCTime2 / fullGCs2) roundTo: 0.1); << 'ms'].
	str	cr.
	str	<< '	incr		';
		print: incrGCs2; << ' totalling '; << incrGCTime2 asStringWithCommas; << 'ms (';
		print: ((incrGCTime2 / upTime2 * 100) roundTo: 0.1);
		<< '% uptime), avg '.
	incrGCs2 > 0 ifTrue: [
		 str print: ((incrGCTime2 / incrGCs2) roundTo: 0.1); << 'ms'
	].
	str cr.
	str	<< '	tenures		';
		<< tenureCount2 asStringWithCommas.
	tenureCount2 = 0 ifFalse:
		[str << ' (avg '; print: (incrGCs2 / tenureCount2) asInteger; << ' GCs/tenure)'].
	str	cr.
].
	LastStats at: 1 put: upTime.
	LastStats at: 2 put: fullGCs.
	LastStats at: 3 put: fullGCTime.
	LastStats at: 4 put: incrGCs.
	LastStats at: 5 put: incrGCTime.
	LastStats at: 6 put: tenureCount.

	^ str contents
! !
