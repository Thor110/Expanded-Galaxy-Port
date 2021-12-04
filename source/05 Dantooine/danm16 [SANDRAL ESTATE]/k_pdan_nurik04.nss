void main() {
	SetGlobalBoolean("DAN_SAND_REFUSE", 1);
	ActionPauseConversation();
	SignalEvent(GetArea(OBJECT_SELF), EventUserDefined(100));
}

