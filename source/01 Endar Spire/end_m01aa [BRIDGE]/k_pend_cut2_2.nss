void main() {
	object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
	object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
	object oEnd_cut2_soldier2 = GetObjectByTag("end_cut2_soldier2", 0);
	object oEnd_cut2_soldier1 = GetObjectByTag("end_cut2_soldier1", 0);
	ActionPauseConversation();
	SetPlotFlag(oEnd_cut2_sith5, 0);
	DelayCommand(0.4, SetMinOneHP(oEnd_cut2_sith5, 0));
	DelayCommand(0.1, AssignCommand(oEnd_cut2_soldier2, CutsceneAttack(oEnd_cut2_sith5, 239, 1, 40)));
	DelayCommand(0.1, AssignCommand(oEnd_cut2_soldier1, CutsceneAttack(oEnd_cut2_sith5, 239, 4, 0)));
	DelayCommand(1.9, AssignCommand(oEnd_cut2_sith3, CutsceneAttack(oEnd_cut2_soldier2, 164, 4, 0)));
}

