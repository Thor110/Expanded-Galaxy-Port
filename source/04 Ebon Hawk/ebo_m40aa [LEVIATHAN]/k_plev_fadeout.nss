void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, AssignCommand(GetObjectByTag("carth", 0), ActionStartConversation(GetFirstPC(), "lev40_carth", 0, 0, 1, "", "", "", "", "", "")));
}

