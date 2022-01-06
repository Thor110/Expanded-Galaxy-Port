void main() {
	object oTat18_tuskamb_04 = GetObjectByTag("tat18_tuskamb_04", 0);
	AssignCommand(oTat18_tuskamb_04, PlaySound("n_tusken_bat1"));
	AssignCommand(oTat18_tuskamb_04, ActionPlayAnimation(108, 1.0, 0.0));
}

