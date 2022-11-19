void main() {
	object oWp_guard1 = GetWaypointByTag("wp_guard1");
	effect efVisual = EffectVisualEffect(3016, 0);
	location location1 = GetLocation(oWp_guard1);
	effect effect3 = EffectVisualEffect(3003, 0);
	effect effect5 = EffectVisualEffect(3018, 0);
	object oGuard1 = GetObjectByTag("guard1", 0);
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	AssignCommand(oGuard1, SetLockOrientationInDialog(oGuard1, 1));
	AssignCommand(oGuard1, SetFacingPoint(GetPosition(oVision_channa)));
}

