void main() {
	object oMission = GetObjectByTag("mission", 0);
	object oZaalbar = GetObjectByTag("zaalbar", 0);
	ActionPauseConversation();
	ChangeToStandardFaction(oMission, 4);
	ChangeToStandardFaction(oZaalbar, 2);
	AssignCommand(oZaalbar, ActionAttack(oMission, 0));
	ActionWait(6.0);
	DelayCommand(6.0, ApplyEffectToObject(0, EffectDeath(0, 1), oMission, 0.0));
	ActionResumeConversation();
	SetGlobalNumber("UNK_PARTYSHOWDOWN", 2);
}

