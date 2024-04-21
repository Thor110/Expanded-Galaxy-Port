void main() {
	if ((GetGlobalBoolean("YAV_TEMP1") == 0)) {
		SignalEvent(GetObjectByTag("yav47_suvam", 0), EventUserDefined(2001));
		SetGlobalBoolean("YAV_TEMP1", 1);
	}
	else {
		SignalEvent(GetObjectByTag("yav47_suvam", 0), EventUserDefined(2002));
		SetGlobalBoolean("YAV_TEMP1", 0);
	}
}
