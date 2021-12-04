void main() {
	object oSaulkarath402 = GetObjectByTag("saulkarath402", 0);
	AssignCommand(oSaulkarath402, ActionPlayAnimation(23, 1.0, 360.0));
	RemovePartyMember(2);
}

