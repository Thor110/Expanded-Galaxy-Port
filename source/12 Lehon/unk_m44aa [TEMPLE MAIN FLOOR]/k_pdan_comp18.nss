void main() {
	object oTempleComp3 = GetObjectByTag("TempleComp3", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oTempleComp3, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

