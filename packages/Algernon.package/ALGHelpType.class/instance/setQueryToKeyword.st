accessing
setQueryToKeyword
	| algernon |
	algernon := ALGCore currentInstance.
	algernon activate.
	algernon query: self keyword, ' '.
	algernon moveCursorToEnd.