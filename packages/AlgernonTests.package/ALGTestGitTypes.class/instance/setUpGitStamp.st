helpers
setUpGitStamp

	self
		previousGitStampDefaultName: ([GitStamp defaultName] on: GitStampNameRequest do: ['']);
		previousGitStampDefaultEmail: ([GitStamp defaultEmail] on: GitStampEmailRequest do: ['']).
	
	GitStamp
		defaultName: 'Hasso';
		defaultEmail: 'mock@email.com'