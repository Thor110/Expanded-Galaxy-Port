void main() {
	object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
	object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
	object oEnd_cut2_soldier3 = GetObjectByTag("end_cut2_soldier3", 0);
	object oEnd_cut2_soldier4 = GetObjectByTag("end_cut2_soldier4", 0);
	ActionPauseConversation();
	DelayCommand(1.5, ApplyEffectToObject(0, EffectDeath(0, 1), oEnd_cut2_soldier3, 0.0));
	SetMinOneHP(oEnd_cut2_soldier4, 0);
	DelayCommand(0.06, AssignCommand(oEnd_cut2_soldier3, CutsceneAttack(oEnd_cut2_sith5, 156, 4, 0)));
	DelayCommand(0.1, AssignCommand(oEnd_cut2_sith3, CutsceneAttack(oEnd_cut2_soldier4, 156, 1, 140)));
}

