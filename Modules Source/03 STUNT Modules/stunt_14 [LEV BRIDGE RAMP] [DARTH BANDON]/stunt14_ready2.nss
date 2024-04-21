void main() {
	object oStunt14_saul = GetObjectByTag("stunt14_saul", 0);
	DelayCommand(9.9, AssignCommand(oStunt14_saul, PlayAnimation(0, 1.0, 4.5)));
}
