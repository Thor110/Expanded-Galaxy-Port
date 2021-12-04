void main() {
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("playerface", 0)), 0));
	AssignCommand(GetPCSpeaker(), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("centerface", 0)))));
}

