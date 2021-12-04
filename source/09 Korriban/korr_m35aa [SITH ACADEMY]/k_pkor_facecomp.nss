void main() {
	object oPC = GetFirstPC();
	object oKor35_torturecomp = GetObjectByTag("kor35_torturecomp", 0);
	vector vPosition = GetPosition(oKor35_torturecomp);
	AssignCommand(oPC, SetFacingPoint(vPosition));
}

