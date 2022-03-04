void main() {
	object oTat18_tuskamb_01 = GetObjectByTag("tat18_tuskamb_01", 0);
	AssignCommand(oTat18_tuskamb_01, PlaySound("n_tusken_bat1"));
	AssignCommand(oTat18_tuskamb_01, ActionPlayAnimation(108, 1.0, 0.0));
}

