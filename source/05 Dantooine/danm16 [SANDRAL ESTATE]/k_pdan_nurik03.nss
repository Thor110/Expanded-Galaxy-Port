void main() {
	SetGlobalBoolean("DAN_SAND_REFUSE", 1);
	object oDan16_door05 = GetObjectByTag("dan16_door05", 0);
	SetLocked(oDan16_door05, 0);
	ActionPauseConversation();
	SignalEvent(GetObjectByTag("dan16_nurik", 0), EventUserDefined(10));
}

