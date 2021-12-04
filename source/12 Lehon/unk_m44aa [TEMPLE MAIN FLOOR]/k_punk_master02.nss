void main() {
	ActionPauseConversation();
	ActionUseTalentOnObject(TalentSpell(35), GetObjectByTag("unk44_traindroid", 0));
	ApplyEffectToObject(1, EffectBeam(2038, OBJECT_SELF, 3, 0), GetObjectByTag("unk44_traindroid", 0), 2.0);
	DelayCommand(2.0, ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("unk44_traindroid", 0), 0.0));
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("tempmove", 0)), 0));
	ActionWait(3.0);
	ActionResumeConversation();
}

