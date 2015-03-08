API
play

	| channel |
	channel := FmodChannel new.
	self library FMOD_System: system handle PlaySound: handle on: channel.
	^ channel.