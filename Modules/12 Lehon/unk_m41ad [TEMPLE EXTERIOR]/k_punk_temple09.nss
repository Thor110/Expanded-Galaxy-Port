void main() {
	AssignCommand(GetPCSpeaker(), SetFacingPoint(GetPosition(OBJECT_SELF)));
	SetFacingPoint(GetPosition(GetPCSpeaker()));
}

