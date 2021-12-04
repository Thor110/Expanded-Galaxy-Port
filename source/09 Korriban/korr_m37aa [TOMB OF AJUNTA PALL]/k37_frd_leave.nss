void main() {
	object oK37_dr_freedon = GetObjectByTag("k37_dr_freedon", 0);
	object oK37_snd_appear = GetObjectByTag("k37_snd_appear", 0);
	SoundObjectPlay(oK37_snd_appear);
	SetLocked(oK37_dr_freedon, 0);
	DelayCommand(0.5, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
}

