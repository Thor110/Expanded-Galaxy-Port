void main() {
	talent talSpell = TalentSpell(96);
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionUseTalentOnObject(talSpell, GetObjectByTag("unk41_rancor2", 0)));
	ActionWait(1.0);
	ActionResumeConversation();
}

