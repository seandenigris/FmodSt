tests
testPlaySound

	| sound |
	sound := self given: #testNewSound.
	self library should receive: #FMOD_System:PlaySound:on:; with: sound system handle and: sound handle and: FmodChannel new; answers: 0.
	
	^ sound play.