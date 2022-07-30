accessing
isEquation

	|command|
	
	command :=  self getCommand asString.
	^ command matchesRegex: self equationPattern