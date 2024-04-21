void main() {
	object oTar02_wpnpcext = GetObjectByTag("tar02_wpnpcext", 0);
	object oDrunk023 = GetObjectByTag("drunk021", 0);
	SignalEvent(oDrunk023, EventUserDefined(3000));
	oDrunk023 = GetObjectByTag("drunk022", 0);
	SignalEvent(oDrunk023, EventUserDefined(3000));
	oDrunk023 = GetObjectByTag("drunk023", 0);
	SignalEvent(oDrunk023, EventUserDefined(3000));
}
