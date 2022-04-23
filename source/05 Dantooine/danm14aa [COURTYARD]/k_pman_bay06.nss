void main() {
	SoundObjectPlay(GetObjectByTag("dan14_hound", 0));
	object oSpawn_kath02 = GetObjectByTag("spawn_kath02", 0);
	int int1;
	object oG_kathhound012 = CreateObject(1, "g_kathhound012", GetLocation(GetObjectByTag("spawn_kath01", 0)), 0);
	int1 = 1;
	while ((int1 <= 2)) {
		oG_kathhound012 = CreateObject(1, "g_kathhound012", GetLocation(GetObjectByTag("spawn_kath01", 0)), 0);
		(int1++);
	}
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

