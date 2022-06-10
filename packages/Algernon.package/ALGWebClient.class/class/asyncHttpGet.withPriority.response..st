methods
asyncHttpGet: urlString withPriority: anInteger response: aBlock
	
	self asyncProcess ifNotNil: [self asyncProcess terminate].
	self asyncProcess: (
		[aBlock value: ([self httpGet: urlString] on: Exception do: [])] 
		forkAt: anInteger)
	
	