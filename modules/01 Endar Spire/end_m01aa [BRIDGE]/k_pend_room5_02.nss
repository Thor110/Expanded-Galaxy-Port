void main() {
	if ((IsObjectPartyMember(GetLastOpenedBy()))) {
		object oEnd_cut2_sith1 = GetObjectByTag("end_cut2_sith1", 0);
		object oEnd_cut2_sith2 = GetObjectByTag("end_cut2_sith2", 0);
		object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
		object oEnd_cut2_sith4 = GetObjectByTag("end_cut2_sith4", 0);
		object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
		object oEnd_cut2_soldier1 = GetObjectByTag("end_cut2_soldier1", 0);
		object oEnd_cut2_soldier2 = GetObjectByTag("end_cut2_soldier2", 0);
		object oEnd_cut2_soldier3 = GetObjectByTag("end_cut2_soldier3", 0);
		object oEnd_cut2_soldier4 = GetObjectByTag("end_cut2_soldier4", 0);
		DelayCommand(0.1, AssignCommand(oEnd_cut2_soldier1, CutsceneAttack(oEnd_cut2_sith5, 239, 4, 0)));
		DelayCommand(0.5, AssignCommand(oEnd_cut2_sith4, CutsceneAttack(oEnd_cut2_soldier2, 239, 4, 0)));
		NoClicksFor(2.2);
		DelayCommand(2.0, SignalEvent(GetArea(OBJECT_SELF), EventUserDefined(20)));
	}
}

