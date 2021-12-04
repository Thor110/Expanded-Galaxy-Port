void main() {
	object oEnd_cut2_sith1 = GetObjectByTag("end_cut2_sith1", 0);
	object oEnd_cut2_sith2 = GetObjectByTag("end_cut2_sith2", 0);
	object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
	object oEnd_cut2_sith4 = GetObjectByTag("end_cut2_sith4", 0);
	object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
	object oEnd_explosion = GetObjectByTag("end_explosion", 0);
	object oEnd_cut2_soldier1 = GetObjectByTag("end_cut2_soldier1", 0);
	object oEnd_cut2_soldier2 = GetObjectByTag("end_cut2_soldier2", 0);
	object oEnd_cut2_soldier3 = GetObjectByTag("end_cut2_soldier3", 0);
	object oEnd_cut2_soldier4 = GetObjectByTag("end_cut2_soldier4", 0);
	AssignCommand(oEnd_cut2_soldier1, CutsceneAttack(oEnd_cut2_sith2, 239, 6, 0));
	AssignCommand(oEnd_cut2_sith1, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_sith2, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_sith3, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_sith4, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_sith5, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_soldier1, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_soldier2, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_soldier3, PlayAnimation(19, 1.0, 999.0));
	AssignCommand(oEnd_cut2_soldier4, PlayAnimation(19, 1.0, 999.0));
}

