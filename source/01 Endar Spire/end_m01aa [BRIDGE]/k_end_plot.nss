
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
	object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
	object oEnd_cut2_soldier4 = GetObjectByTag("end_cut2_soldier4", 0);
	SetPlotFlag(oEnd_cut2_sith5, 1);
	object oEnd_explosion = GetObjectByTag("end_explosion", 0);
	location location1 = GetLocation(oEnd_explosion);
	sub1(1.7);
  //ActionPauseConversation();
	//DelayCommand(1.7, ActionResumeConversation());
  AssignCommand(oEnd_cut2_sith3, CutsceneAttack(oEnd_cut2_soldier4, 136, 8, 0));
}

