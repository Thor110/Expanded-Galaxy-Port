void main() {
	ActionPauseConversation();
	DelayCommand(2.0, ActionResumeConversation());
	DelayCommand(0.1, ClearAllActions());
	DelayCommand(0.4, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0));
}
