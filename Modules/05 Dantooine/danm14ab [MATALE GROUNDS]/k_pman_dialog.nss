void main() {
	object oInvis_speeder_conv = GetObjectByTag("invis_speeder_conv", 0);
	AssignCommand(oInvis_speeder_conv, ActionStartConversation(OBJECT_SELF, "", 0, 0, 0, "", "", "", "", "", ""));
}

