// Prototypes
void sub1(object objectParam1, int intParam2);

void sub1(object objectParam1, int intParam2) {
	ActionForceMoveToObject(objectParam1, intParam2, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	object oTar02_wpdrunk3 = GetObjectByTag("tar02_wpnpcext", 0);
	object oDrunk023 = GetObjectByTag("drunk021", 0);
	oTar02_wpdrunk3 = GetObjectByTag("tar02_wpdrunk1", 0);
	SignalEvent(oDrunk023, EventUserDefined(4000));
	AssignCommand(oDrunk023, sub1(oTar02_wpdrunk3, 0));
	oDrunk023 = GetObjectByTag("drunk022", 0);
	oTar02_wpdrunk3 = GetObjectByTag("tar02_wpdrunk2", 0);
	SignalEvent(oDrunk023, EventUserDefined(4000));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("drunk022", 0), sub1(oTar02_wpdrunk3, 0)));
	oDrunk023 = GetObjectByTag("drunk023", 0);
	oTar02_wpdrunk3 = GetObjectByTag("tar02_wpdrunk3", 0);
	SignalEvent(oDrunk023, EventUserDefined(4000));
	DelayCommand(2.0, AssignCommand(GetObjectByTag("drunk023", 0), sub1(oTar02_wpdrunk3, 0)));
}
