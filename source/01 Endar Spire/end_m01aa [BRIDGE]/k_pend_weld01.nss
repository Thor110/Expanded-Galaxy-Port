void main() {
	ActionPlayAnimation(25, 1.0, 0.0);
	ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(0)));
}

