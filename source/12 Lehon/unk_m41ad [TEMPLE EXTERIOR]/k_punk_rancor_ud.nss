void main() {
	ClearAllActions();
	switch (GetUserDefinedEventNumber()) {
		case 10:
			ChangeToStandardFaction(GetObjectByTag("unk41_mand", 0), 4);
			CutsceneAttack(GetObjectByTag("unk41_mand", 0), 276, 3, 200);
			return;
		case 20:
			ChangeToStandardFaction(GetObjectByTag("unk41_duros1", 0), 4);
			CutsceneAttack(GetObjectByTag("unk41_duros1", 0), 276, 3, 200);
			return;
		case 30:
			ChangeToStandardFaction(GetObjectByTag("unk41_duros2", 0), 4);
			CutsceneAttack(GetObjectByTag("unk41_duros2", 0), 276, 3, 200);
			return;
	}
}

