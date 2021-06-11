icon
icon

	^ self class mapping 
			at: self algerType typeObject name
			ifAbsent: [ #WorldMenu ]