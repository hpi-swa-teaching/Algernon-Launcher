initialize
getName

	| tempName |
	
	tempName := self typeObject shortName.
	
	(self isChild) ifTrue:
		[^ tempName].
	
	^ tempName, ' (', self project name, ')'