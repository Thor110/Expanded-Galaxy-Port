void main() {
	SetGlobalNumber("K_Geno_Vorn", 2);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(2.0, SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0));
	NoClicksFor(0.7);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("tat_invis_conv", 0), ActionStartConversation(OBJECT_SELF, "tat18_vorndroid2", 0, 0, 0, "", "", "", "", "", "")));
}

