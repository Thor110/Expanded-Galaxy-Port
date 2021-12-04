void main() {
	SignalEvent(GetObjectByTag("dan13_dorak", 0), EventUserDefined(10));
	SignalEvent(OBJECT_SELF, EventUserDefined(20));
}

