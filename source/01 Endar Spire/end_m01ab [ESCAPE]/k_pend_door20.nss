void main() {
	DestroyObject(GetObjectByTag("end_sith03", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("end_sithsol01", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("end_sithsol01", 1), 0.0, 1, 0.0);
	SetGlobalNumber("END_CARTH_DLG", 5);
	NoClicksFor(0.7);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Carth", 0), ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "")));
}

