void main() {
	if ((GetGlobalBoolean("UNK_TEMP") == 1)) {
		SetGlobalBoolean("UNK_TEMP", 0);
		AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(GetObjectByTag("telep", 0))));
		AssignCommand(GetPCSpeaker(), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playermove", 0)))));
	}
}

