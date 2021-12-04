void main() {
	object oTat18_kraytdrag = GetObjectByTag("tat18_kraytdrag", 0);
	ActionPauseConversation();
	DelayCommand(2.0, ActionResumeConversation());
	AssignCommand(oTat18_kraytdrag, PlaySound("c_kraytdrg_bat1"));
}

