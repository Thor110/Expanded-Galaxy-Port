void main() {
	object oLev40_groundzero = GetObjectByTag("lev40_groundzero", 0);
	SignalEvent(oLev40_groundzero, EventUserDefined(2000));
}

