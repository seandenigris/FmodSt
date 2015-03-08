as yet unclassified 
printOn: aStream

	aStream
		nextPutAll: name;
		nextPutAll: ' = ';
		nextPutAll: value asString;
		space;
		nextPutAll: '/* ';
		nextPutAll: description;
		nextPutAll: ' */'.