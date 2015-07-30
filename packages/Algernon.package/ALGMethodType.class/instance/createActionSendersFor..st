actions
createActionSendersFor: aMethod

	^ ALGAction
			withName: 'senders of'
			rank: 8
			target: self
			selector: #browseAllCallsOn:
			args: (OrderedCollection with: aMethod)