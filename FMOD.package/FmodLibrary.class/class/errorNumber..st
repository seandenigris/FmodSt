errors
errorNumber: anInteger 

	| error |
	error := FmodError number: anInteger.
	self error: error description, ' (Code ', error value asString, ')'.