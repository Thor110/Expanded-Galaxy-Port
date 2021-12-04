void main() {
	object oUnk44_rakcomp = GetObjectByTag("unk44_rakcomp", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oUnk44_rakcomp, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

