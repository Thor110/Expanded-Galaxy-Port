void main() {
	if (GetLocalBoolean(OBJECT_SELF, 26)) {
		SignalEvent(OBJECT_SELF, EventUserDefined(1004));
	}
}
