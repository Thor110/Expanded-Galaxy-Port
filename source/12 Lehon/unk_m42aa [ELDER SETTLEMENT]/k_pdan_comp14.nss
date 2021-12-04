void main() {
	object oUnk42_raksupercomp = GetObjectByTag("unk42_raksupercomp", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oUnk42_raksupercomp, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

