void main() {
	object oWp_guard1 = GetWaypointByTag("wp_guard1");
	effect efVisual = EffectVisualEffect(3016, 0);
	location location1 = GetLocation(oWp_guard1);
	effect effect3 = EffectVisualEffect(3003, 0);
	effect effect5 = EffectVisualEffect(3018, 0);
	object oGuard2 = GetObjectByTag("guard2", 0);
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	AssignCommand(oGuard2, SetLockOrientationInDialog(oGuard2, 1));
	AssignCommand(oGuard2, SetFacingPoint(GetPosition(oVision_malak)));
}

