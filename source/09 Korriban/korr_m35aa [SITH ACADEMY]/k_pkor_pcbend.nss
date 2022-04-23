void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	AssignCommand(oPC, ActionPlayAnimation(11, 1.0, 1.0));
	object oK35_snd_device = GetObjectByTag("k35_snd_device", 0);
	DelayCommand(0.5, SoundObjectPlay(oK35_snd_device));
	ActionWait(1.0);
	ActionResumeConversation();
}

