void main() {
	if ((GetUserDefinedEventNumber() == 110)) {
		PlaySound("p_juhani_bat1");
		DelayCommand(1.0, ActionResumeConversation());
	}
	else {
		ActionResumeConversation();
	}
}

