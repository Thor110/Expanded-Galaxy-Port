void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 1005:
			if ((GetTag(GetLastHostileActor(OBJECT_SELF)) == "end_droid02")) {
				ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0);
			}
			break;
	}
}

