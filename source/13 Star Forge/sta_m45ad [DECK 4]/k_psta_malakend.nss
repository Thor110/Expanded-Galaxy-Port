// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oK45_door_end = GetObjectByTag("k45_door_end", 0);
	SetLocked(oK45_door_end, 0);
	sub1(8.0);
	DelayCommand(3.0, SetDialogPlaceableCamera(112));
	SetGlobalFadeOut(6.0, 2.0, 0.0, 0.0, 0.0);
}

