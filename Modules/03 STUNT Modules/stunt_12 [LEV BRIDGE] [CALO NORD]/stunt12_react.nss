void main() {
	object oStunt12_malak = GetObjectByTag("stunt12_malak", 0);
	DelayCommand(0.5, AssignCommand(oStunt12_malak, ClearAllActions()));
	DelayCommand(1.0, AssignCommand(oStunt12_malak, PlayAnimation(100, 1.0, 0.0)));
}

