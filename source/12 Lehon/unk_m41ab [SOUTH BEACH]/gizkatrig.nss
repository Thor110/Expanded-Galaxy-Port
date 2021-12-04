void main() {
	AssignCommand(GetObjectByTag("invisp", 0), ActionStartConversation(GetPCSpeaker(), "unk41_gizka", 0, 0, 0, "", "", "", "", "", ""));
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
}

