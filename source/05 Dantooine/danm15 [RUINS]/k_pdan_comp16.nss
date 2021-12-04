void main() {
	object oDan15_compw = GetObjectByTag("dan15_compw", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oDan15_compw, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

