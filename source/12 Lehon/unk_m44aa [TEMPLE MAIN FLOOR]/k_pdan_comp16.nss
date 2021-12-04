void main() {
	object oTempleComp2 = GetObjectByTag("TempleComp2", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oTempleComp2, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

