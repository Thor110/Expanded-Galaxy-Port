void main() {
	object oDan13_testdrd = GetObjectByTag("dan13_testdrd", 0);
	ChangeToStandardFaction(oDan13_testdrd, 1);
	SignalEvent(oDan13_testdrd, EventUserDefined(10));
}

