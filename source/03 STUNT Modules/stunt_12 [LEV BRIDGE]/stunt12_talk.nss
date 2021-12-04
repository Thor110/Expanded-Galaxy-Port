void main() {
	object oStunt12_sith = GetObjectByTag("stunt12_sith", 0);
	object oStunt12_sith2 = GetObjectByTag("stunt12_sith2", 0);
	object oStunt12_sith_facing = GetObjectByTag("stunt12_sith_facing", 0);
	DelayCommand(1.0, AssignCommand(oStunt12_sith2, ActionMoveToObject(oStunt12_sith, 0, 1.0)));
	DelayCommand(3.0, AssignCommand(oStunt12_sith, SetFacing(GetFacing(oStunt12_sith_facing))));
	DelayCommand(3.9, AssignCommand(oStunt12_sith2, ClearAllActions()));
	DelayCommand(4.0, AssignCommand(oStunt12_sith2, PlayAnimation(5, 1.0, 999.0)));
	DelayCommand(4.5, AssignCommand(oStunt12_sith, PlayAnimation(2, 1.0, 999.0)));
}

