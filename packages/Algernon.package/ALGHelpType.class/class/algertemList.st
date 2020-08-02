algertem lists
algertemList
	^ (ALGItemProvider filters collect: [:each |
		each helpTextsCollect: [ :assoc | self createItemFor: assoc] ]) flatten.