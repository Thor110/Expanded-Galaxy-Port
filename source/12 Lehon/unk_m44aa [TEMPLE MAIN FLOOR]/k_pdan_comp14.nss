void main() {
	object oTempleComp1 = GetObjectByTag("TempleComp1", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oTempleComp1, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

