void main() {
	object oPC = GetFirstPC();
	object oKor39_utharwynn = GetObjectByTag("kor39_utharwynn", 0);
	DelayCommand(0.5, AssignCommand(oKor39_utharwynn, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "")));
}

