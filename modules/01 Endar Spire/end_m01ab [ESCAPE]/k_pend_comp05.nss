void main() {
	SetGlobalNumber("END_TRASK_DLG", 17);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("end_trask", 0), ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 1, "", "", "", "", "", "")));
}

