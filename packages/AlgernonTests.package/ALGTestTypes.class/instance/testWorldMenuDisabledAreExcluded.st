testing world menu types
testWorldMenuDisabledAreExcluded

	self runQuery: 'Enter Parent Project'.
	self deny: (self resultsIncludeName: 'Enter Parent Project')