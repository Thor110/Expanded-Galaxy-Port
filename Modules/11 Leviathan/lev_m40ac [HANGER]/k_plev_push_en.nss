void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		SignalEvent(GetObjectByTag("lev40_forcepush2", 0), EventUserDefined(2000));
	}
}

