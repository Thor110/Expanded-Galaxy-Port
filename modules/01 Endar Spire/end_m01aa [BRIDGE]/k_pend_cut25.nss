// Prototypes
object sub2(int intParam1);
void sub1(string stringParam1, int intParam2, int intParam3);

object sub2(int intParam1) {
	return GetObjectByTag(("end01_sceneobj0" + IntToString(intParam1)), 0);
}

void sub1(string stringParam1, int intParam2, int intParam3) {
	location location1 = GetLocation(GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1));
	effect efVisual = EffectVisualEffect(3003, 0);
	effect effect3 = EffectVisualEffect(6002, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	if (intParam2) {
		ApplyEffectToObject(0, effect3, GetFirstPC(), 0.0);
	}
	if (intParam3) {
		PlayRumblePattern(14);
	}
}

void main() {
	ActionDoCommand(sub1("end_wp_cut10", 1, 1));
	ActionWait(0.5);
	ActionDoCommand(sub1("end_wp_cut11", 1, 1));
	ActionWait(0.5);
	ActionCloseDoor(OBJECT_SELF);
	SetLocked(OBJECT_SELF, 1);
	ActionWait(2.0);
	ActionDoCommand(SignalEvent(sub2(3), EventUserDefined(0)));
}

