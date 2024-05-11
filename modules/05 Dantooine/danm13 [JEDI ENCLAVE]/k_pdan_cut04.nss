void main() {
	SetGlobalBoolean("DAN_CORT_START", 1);
	SignalEvent(GetObjectByTag("dan13_zhar", 0), EventUserDefined(50));
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
}

