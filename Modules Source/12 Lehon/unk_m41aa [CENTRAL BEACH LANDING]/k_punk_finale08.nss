void main() {
	AssignCommand(GetPCSpeaker(), ClearAllActions());
	AssignCommand(GetObjectByTag("bastila", 0), ActionMoveToLocation(GetLocation(GetPCSpeaker()), 0));
}

