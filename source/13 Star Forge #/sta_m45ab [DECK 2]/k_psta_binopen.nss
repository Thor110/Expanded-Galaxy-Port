void main() {
	object oSta_force_cage = GetObjectByTag("sta_force_cage", 0);
	ClearAllEffects();
	AssignCommand(oSta_force_cage, PlayAnimation(203, 1.0, 0.0));
	SetLocked(OBJECT_SELF, 1);
}

