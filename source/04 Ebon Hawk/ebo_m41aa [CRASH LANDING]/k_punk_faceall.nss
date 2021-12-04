void main() {
	AssignCommand(GetObjectByTag("p_cand", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_bastilla", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_carth", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_mission", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_juhani", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_jolee", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_hk47", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_zaalbar", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("p_t3m4", 0), SetFacingPoint(GetPosition(GetPCSpeaker())));
}

