void main() {
	object object1 = OBJECT_SELF;
	AssignCommand(GetPCSpeaker(), ActionPlayAnimation(10, 1.0, 1.0));
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

