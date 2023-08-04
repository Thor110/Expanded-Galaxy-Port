void main() {
	object oStunt12_sith = GetObjectByTag("stunt12_sith", 0);
	object oStunt12_sith2 = GetObjectByTag("stunt12_sith2", 0);
	object oStunt12_sith_move = GetObjectByTag("stunt12_sith_move", 0);
	object oStunt12_sith_facing2 = GetObjectByTag("stunt12_sith_facing2", 0);
	DelayCommand(0.1, AssignCommand(oStunt12_sith2, PlayAnimation(104, 1.0, 999.0)));
	DelayCommand(0.6, AssignCommand(oStunt12_sith, PlayAnimation(104, 1.0, 999.0)));
	DelayCommand(2.0, AssignCommand(oStunt12_sith2, ActionMoveToObject(oStunt12_sith_move, 0, 1.0)));
	DelayCommand(2.2, AssignCommand(oStunt12_sith, SetFacing(GetFacing(oStunt12_sith_facing2))));
	DelayCommand(10.0, DestroyObject(oStunt12_sith2, 0.0, 0, 0.0));
}

