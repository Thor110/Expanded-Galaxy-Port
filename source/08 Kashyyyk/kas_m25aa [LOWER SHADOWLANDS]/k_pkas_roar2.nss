void main() {
	object oKas25_wraid = GetObjectByTag("kas25_wraid", 0);
	object object3 = OBJECT_SELF;
	AssignCommand(oKas25_wraid, PlaySound("c_rancor_bat1"));
	AssignCommand(oKas25_wraid, ActionPlayAnimation(107, 1.0, 0.0));
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
}

