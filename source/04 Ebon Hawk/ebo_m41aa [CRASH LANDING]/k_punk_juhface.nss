void main() {
	AssignCommand(GetObjectByTag("p_juhani", 0), SetFacingPoint(GetPosition(GetObjectByTag("centerface", 0))));
	AssignCommand(GetPCSpeaker(), SetFacingPoint(GetPosition(GetObjectByTag("centerface", 0))));
}

