void main() {
	object oSittingBith = GetObjectByTag("SittingBith", 0);
	if (GetIsObjectValid(oSittingBith)) {
		AssignCommand(oSittingBith, ActionPlayAnimation(204, 1.0, 0.0));
	}
}

