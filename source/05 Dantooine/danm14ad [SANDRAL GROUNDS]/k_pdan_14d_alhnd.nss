void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 1007:
			SetGlobalNumber("DAN_ROMANCE_PLOT", 3);
			CreateObject(1, "dan14_nurik", GetLocation(GetObjectByTag("dan14ad_wp_nurik1", 0)), 0);
			break;
		case 1004:
			ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0);
	}
}

