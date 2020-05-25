algertem lists
algertemList
	^ (ALGItemProvider filters collect: [:each |
		each class helpTexts associations collect: [:assoc |
			ALGItem withAlgertype: (self withKeyword: assoc key text: assoc value)] ]) flatten.