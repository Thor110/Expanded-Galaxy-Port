void main() {
	object oAssaultdrd = GetObjectByTag("assaultdrd", 0);
	SignalEvent(oAssaultdrd, EventUserDefined(2000));
	ActionPauseConversation();
	ExecuteScript("k_act_cmusic_on", OBJECT_SELF, 0xFFFFFFFF);
	ActionWait(16.0);
	ActionDoCommand(ExecuteScript("k_act_cmusic_off", OBJECT_SELF, 0xFFFFFFFF));
	ActionResumeConversation();
}

