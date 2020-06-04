actions
createActionSendersFor: aMethod

	^ ALGAction
			withName: 'senders of'
			rank: 7
			target: self
			selector: #browseAllCallsOn:
			args: (OrderedCollection with: aMethod)