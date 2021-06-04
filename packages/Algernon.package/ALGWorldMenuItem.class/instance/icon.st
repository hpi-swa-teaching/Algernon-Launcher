icon
icon

	^ self class mapping 
			at: self menuName
			ifAbsent: [ #WorldMenu ]