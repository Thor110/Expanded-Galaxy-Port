void main() {
	if (((GetGlobalBoolean("UNK_BLACKHOSTILE") == 0) && (GetIsPC(GetEnteringObject()) == 1))) {
		AssignCommand(GetObjectByTag("unk41_rakplot", 0), ActionStartConversation(GetFirstPC(), "unk41_rakplot", 0, 0, 1, "", "", "", "", "", ""));
		DelayCommand(0.5, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	}
}

