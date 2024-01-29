void main() {
	MusicBattlePlay(GetArea(OBJECT_SELF));
	int int1 = 0;
	while ((int1 <= 8)) {
		RemovePartyMember(int1);
		(int1++);
	}
	ActionPauseConversation();
	ExecuteScript("k_pman_fish05", GetObjectByTag("man28_seabeast", 0), 0xFFFFFFFF);
}

