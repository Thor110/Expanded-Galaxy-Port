void main() {
	object oStunt14_speak = GetObjectByTag("stunt14_speak", 0);
	object oPC = GetFirstPC();
	AssignCommand(oStunt14_speak, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
}

