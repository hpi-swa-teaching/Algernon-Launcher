accessing
upgrade
	self latestVersion > self versionNumber
		ifTrue: [ self cleanup. 
				self versionNumber: self latestVersion ]