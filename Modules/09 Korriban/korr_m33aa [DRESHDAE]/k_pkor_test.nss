void main() {
	object oNearestKor33_czerkagrd = GetNearestObjectByTag("kor33_czerkagrd", OBJECT_SELF, 1);
	ActionPauseConversation();
	ActionCastFakeSpellAtObject(87, oNearestKor33_czerkagrd, 0);
	ActionResumeConversation();
}

