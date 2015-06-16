instance creation
newForTopResults

	^ self basicNew
		rank: self rankTopResults;
		title: self topResults;
		yourself