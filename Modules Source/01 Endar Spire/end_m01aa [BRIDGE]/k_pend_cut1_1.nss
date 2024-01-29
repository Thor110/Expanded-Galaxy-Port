void main() {
	object oEnd_sith2 = GetObjectByTag("end_sith2", 0);
	object oEnd_sith3 = GetObjectByTag("end_sith3", 0);
	object oEnd_soldier2 = GetObjectByTag("end_soldier2", 0);
  //ChangeToStandardFaction(oEnd_soldier2, 4);
  //ChangeToStandardFaction(GetObjectByTag("end_sith2"), 1);
  //ChangeToStandardFaction(GetObjectByTag("end_sith3"), 1);
  //AssignCommand(GetObjectByTag("end_sith2"), ActionAttack(oEnd_soldier2, 0));
  //AssignCommand(GetObjectByTag("end_sith3"), ActionAttack(oEnd_soldier2, 0));
  //AssignCommand(oEnd_sith2, CutsceneAttack(oEnd_soldier2, 239, 1, 40));
  //AssignCommand(oEnd_sith3, CutsceneAttack(oEnd_soldier2, 239, 1, 0));
	DelayCommand(1.0, AssignCommand(oEnd_sith2, CutsceneAttack(oEnd_soldier2, 239, 1, 40)));
	DelayCommand(0.5, AssignCommand(oEnd_sith3, CutsceneAttack(oEnd_soldier2, 239, 1, 40)));

  //DelayCommand(3.5,ActionResumeConversation());
	ActionPauseConversation();
  //AssignCommand(oEnd_sith2, CutsceneAttack(oEnd_soldier2, 239, 1, 0));
  //AssignCommand(oEnd_sith3, CutsceneAttack(oEnd_soldier2, 239, 1, 0));
	//AssignCommand(oEnd_soldier2, CutsceneAttack(oEnd_sith2, 239, 1, 0));

	//SetMinOneHP(oEnd_soldier2, 1);//dies too quickly
}

