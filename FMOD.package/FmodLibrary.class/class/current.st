instance creation
current

	^ current ifNil: [ current := self new ].