void main() {
	object oTat18_kraytdrag = GetObjectByTag("tat18_kraytdrag", 0);
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	AssignCommand(oTat18_kraytdrag, PlaySound("c_kraytdrg_bat1"));
	AssignCommand(oTat18_kraytdrag, ActionPlayAnimation(107, 1.0, 0.0));
}

