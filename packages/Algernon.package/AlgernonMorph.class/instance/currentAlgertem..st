accessing
currentAlgertem: anAlgertem

	currentAlgertem := anAlgertem.
	self currentAlgertemLabel contents: self currentAlgertemString.
	self changed.