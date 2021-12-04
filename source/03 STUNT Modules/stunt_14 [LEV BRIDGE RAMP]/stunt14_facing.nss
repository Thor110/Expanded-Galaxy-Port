void main() {
	object oStunt14_saul = GetObjectByTag("stunt14_saul", 0);
	object oStunt14_bandon = GetObjectByTag("stunt14_bandon", 0);
	DelayCommand(2.0, AssignCommand(oStunt14_saul, SetFacingPoint(GetPosition(oStunt14_bandon))));
}

