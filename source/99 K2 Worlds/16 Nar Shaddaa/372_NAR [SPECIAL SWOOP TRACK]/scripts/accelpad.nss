int StartingConditional() {
	object object1 = SWMG_GetPlayer();
	object object3 = SWMG_GetLastFollowerHit();
	AurPostString(("Hit follower: " + SWMG_GetObjectName(object3)), 10, 15, 5.0);
	if ((FindSubString(SWMG_GetObjectName(object3), "MGM") == (-1))) {
		if ((SWMG_GetIsInvulnerable(object1) == 0)) {
			SWMG_SetPlayerAccelerationPerSecond((SWMG_GetPlayerAccelerationPerSecond() * 1.1));
			SWMG_SetPlayerSpeed((SWMG_GetPlayerSpeed() * 1.05));
		}
		SWMG_PlayAnimation(OBJECT_SELF, "boost", 0, 0, 0);
		SWMG_AdjustFollowerHitPoints(object3, (-100), (-100));
	}
	return 0;
}

