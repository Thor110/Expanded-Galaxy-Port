void main() {
	object oK38a_assassindrd = GetObjectByTag("k38a_assassindrd", 0);
	ClearAllActions();
	ActionMoveToObject(oK38a_assassindrd, 0, 0.1);
	ActionPlayAnimation(15, 0.5, 2.0);
	object oK38a_snd_fixdrd = GetObjectByTag("k38a_snd_fixdrd", 0);
	DelayCommand(0.5, SoundObjectPlay(oK38a_snd_fixdrd));
}

