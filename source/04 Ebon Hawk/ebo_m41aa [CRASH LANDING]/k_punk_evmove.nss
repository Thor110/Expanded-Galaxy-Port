void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	AssignCommand(GetObjectByTag("p_carth", 0), ActionMoveToObject(GetObjectByTag("pebn_carth", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("p_carth", 0), SetFacingPoint(GetPosition(GetObjectByTag("centerface", 0))));
	AssignCommand(GetObjectByTag("p_juhani", 0), ActionMoveToObject(GetObjectByTag("pebn_juhani", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("p_juhani", 0), SetFacingPoint(GetPosition(GetObjectByTag("centerface", 0))));
	SetGlobalFadeIn(3.0, 0.0, 0.0, 0.0, 0.0);
}

