instance creation
name: nameString value: anInteger description: descriptionString
	
	^ self new
		name: nameString;
		value: anInteger;
		description: descriptionString asString;
		yourself.