void main() {
	object oTat18_tuskamb_02 = GetObjectByTag("tat18_tuskamb_02", 0);
	object oTat18_tuskamb_03 = GetObjectByTag("tat18_tuskamb_03", 0);
	AssignCommand(oTat18_tuskamb_02, PlaySound("n_tusken_bat2"));
	AssignCommand(oTat18_tuskamb_02, ActionPlayAnimation(107, 1.0, 0.0));
	AssignCommand(oTat18_tuskamb_03, ActionPlayAnimation(108, 1.0, 0.0));
}

