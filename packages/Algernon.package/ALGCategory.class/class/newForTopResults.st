instance creation
newForTopResults

	^ self new
		rank: self rankTopResults;
		title: self titleTopResults;
		yourself