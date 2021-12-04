void main() {
	GiveGoldToCreature(GetPCSpeaker(), 1000);
	AssignCommand(GetObjectByTag("dan14_alhan", 0), ActionPlayAnimation(118, 1.0, 0.0));
}

