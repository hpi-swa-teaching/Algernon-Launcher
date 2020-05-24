accessing
setQueryToKeyword
	| algernon |
	self halt.
	algernon := ALGCore currentInstance.
	algernon activate.
	algernon query: self keyword, ' '.
	algernon moveCursorToEnd.