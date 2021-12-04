// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	sub1(2.0);
	DelayCommand(0.1, ClearAllActions());
	DelayCommand(0.4, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0));
}

