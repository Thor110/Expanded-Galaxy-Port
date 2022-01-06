void main() {
	object oDan15_compb = GetObjectByTag("dan15_compb", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oDan15_compb, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

