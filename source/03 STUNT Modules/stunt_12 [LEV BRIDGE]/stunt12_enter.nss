void main() {
	object oStunt12_speak = GetObjectByTag("stunt12_speak", 0);
	object oPC = GetFirstPC();
	AssignCommand(oStunt12_speak, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
}

