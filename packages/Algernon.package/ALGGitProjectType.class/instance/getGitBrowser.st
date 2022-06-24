actions
getGitBrowser
	
	| squitBrowser |
	
	squitBrowser := SquitBrowser new.
	squitBrowser projectIndex: (squitBrowser projectList indexOf: self typeObject).
	
	^ squitBrowser