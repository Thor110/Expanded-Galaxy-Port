void main() {
	ActionPauseConversation();
	PlaySound("cs_playercrush");
	DelayCommand(1.1, AssignCommand(GetObjectByTag("unk41_rancor", 0), ActionDoCommand(CutsceneAttack(GetFirstPC(), 276, 1, 1))));
	DelayCommand(2.8, SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0));
	ActionWait(3.5);
	ActionResumeConversation();
}

