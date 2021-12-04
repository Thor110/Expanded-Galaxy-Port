void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			ClearAllActions();
			ActionJumpToObject(GetObjectByTag("man28ad_beast_final", 0), 1);
			SetCommandable(0, OBJECT_SELF);
			break;
		case 20:
			SetIsDestroyable(0, 1, 0);
			ActionDoCommand(JumpToObject(GetObjectByTag("dead_beast", 0), 1));
			ActionDoCommand(ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0));
			break;
		case 1003:
			{
				object object3 = GetAttemptedAttackTarget();
				ApplyEffectToObject(0, EffectDeath(0, 1), object3, 0.0);
			}
			break;
	}
}

