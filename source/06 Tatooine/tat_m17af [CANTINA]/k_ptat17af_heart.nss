void main() {
	object oSittingWalrusman = GetObjectByTag("SittingWalrusman", 0);
	object oSittingBith = GetObjectByTag("SittingBith", 0);
	int nRandom = Random(8);
	if ((nRandom == 0)) {
		AssignCommand(oSittingWalrusman, ActionPlayAnimation(205, 1.0, 0.0));
		AssignCommand(oSittingWalrusman, ActionPlayAnimation(204, 1.0, 0.0));
	}
	else {
		if ((nRandom == 1)) {
			AssignCommand(oSittingBith, ActionPlayAnimation(205, 1.0, 0.0));
			AssignCommand(oSittingBith, ActionPlayAnimation(204, 1.0, 0.0));
		}
	}
}

