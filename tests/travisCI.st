| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'Algernon';
  repository: 'filetree://', gitPath, '/SWT15-Project-12/packages';
  get.

Metacello new
  baseline: 'Algernon';
  repository: 'filetree://', gitPath, '/SWT15-Project-12/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfAlgernon' )
  value: 'TravisCISuccess.txt'
  value: 'TravisCIFailure.txt'.
