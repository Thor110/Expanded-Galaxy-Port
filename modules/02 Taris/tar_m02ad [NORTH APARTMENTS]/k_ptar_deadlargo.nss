void main() {
	SetGlobalNumber("Tar_LargoBoun", 30);
	SpeakString("GEN_I_AM_DEAD", 3);
	SpeakString("GEN_ATTACK_MY_TARGET", 3);
	if (GetLocalBoolean(OBJECT_SELF, 27) > 0) {
		SignalEvent(OBJECT_SELF, EventUserDefined(1007));
	}
}
