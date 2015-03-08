accessing
error: anInteger

	^ self errors detect: [ :e | e value = anInteger ].