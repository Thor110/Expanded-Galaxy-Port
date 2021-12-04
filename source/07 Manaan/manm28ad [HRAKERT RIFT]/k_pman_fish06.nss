void main() {
	ClearAllActions();
	ActionPlayAnimation(119, 1.0, 0.0);
	ActionPlayAnimation(119, 1.0, 0.0);
	SoundObjectPlay(GetObjectByTag("man28ad_shark01", 0));
	if ((GetGender(GetFirstPC()) == 0)) {
		SoundObjectPlay(GetObjectByTag("man28ad_screamm", 0));
	}
	else {
		SoundObjectPlay(GetObjectByTag("man28ad_screamf", 0));
	}
	ActionDoCommand(SignalEvent(GetObjectByTag("man28_death", 0), EventUserDefined(0)));
}

