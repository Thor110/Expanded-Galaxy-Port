void main() {
	object oStunt12_droid_broken = GetObjectByTag("stunt12_droid_broken", 0);
	object oStunt12_droid_broken2 = GetObjectByTag("stunt12_droid_broken2", 0);
	object oStunt12_droid = GetObjectByTag("stunt12_droid", 0);
	object oStunt12_droid_wp = GetObjectByTag("stunt12_droid_wp", 0);
	DelayCommand(1.5, AssignCommand(oStunt12_droid_broken, ClearAllActions()));
	DelayCommand(1.6, AssignCommand(oStunt12_droid_broken, PlayAnimation(115, 1.0, 0.0)));
	DelayCommand(1.8, AssignCommand(oStunt12_droid, ClearAllActions()));
	DelayCommand(2.5, AssignCommand(oStunt12_droid_broken, PlayAnimation(106, 1.0, 0.0)));
	DelayCommand(3.0, AssignCommand(oStunt12_droid, ClearAllActions()));
	DelayCommand(4.5, AssignCommand(oStunt12_droid, ActionMoveToObject(oStunt12_droid_wp, 0, 1.0)));
	DelayCommand(15.8, AssignCommand(oStunt12_droid, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0)));
}

