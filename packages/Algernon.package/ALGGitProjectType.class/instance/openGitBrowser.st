actions
openGitBrowser
	
	| squitBrowser |
	
	squitBrowser := SquitBrowser new.
	squitBrowser projectIndex: (squitBrowser projectList indexOf: self typeObject).
	
	ToolBuilder open: squitBrowser