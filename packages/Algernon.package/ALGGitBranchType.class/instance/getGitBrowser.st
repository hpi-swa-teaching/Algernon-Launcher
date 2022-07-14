actions
getGitBrowser
	
	| squitBrowser |
	
	ALGSquitBrowser ifNotNil: [^ ALGSquitBrowser].
	
	squitBrowser := SquitBrowser new.
	
	^ squitBrowser
			projectIndex: (squitBrowser projectList indexOf: self project);
			branchSelection: (self typeObject shortName);
			yourself