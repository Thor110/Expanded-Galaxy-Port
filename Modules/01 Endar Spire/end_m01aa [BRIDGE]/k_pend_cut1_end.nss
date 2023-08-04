void main() {
	object object1 = GetObjectByTag("end_trask", 0);
  //object object1 = GetObjectByTag("end_trask", 0);
	object oEnd_sith2 = GetObjectByTag("end_sith2", 0);
	object oEnd_sith3 = GetObjectByTag("end_sith3", 0);
	object oNPC = GetPartyMemberByIndex(0);
	SetMinOneHP(oEnd_sith2, 0);
	SetMinOneHP(oEnd_sith3, 0);
	ExecuteScript("k_pend_aion", oEnd_sith2, 0xFFFFFFFF);
	ExecuteScript("k_pend_aion", oEnd_sith3, 0xFFFFFFFF);
	ChangeToStandardFaction(oEnd_sith2, 1);
	ChangeToStandardFaction(oEnd_sith3, 1);
	ExecuteScript("k_pman_npcstart", object1, 0xFFFFFFFF);
	AssignCommand(object1, ClearAllActions());
	DelayCommand(0.1, AssignCommand(object1, ActionMoveToObject(oEnd_sith2, 1, 1.0)));
	DelayCommand(3.0, AssignCommand(object1, ActionAttack(oEnd_sith2, 0)));
	AssignCommand(oEnd_sith3, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oEnd_sith3, ActionMoveToObject(oNPC, 1, 1.0)));
	DelayCommand(3.0, AssignCommand(oEnd_sith3, ActionAttack(oNPC, 0)));
	object oArea = GetArea(OBJECT_SELF);
	MusicBattleStop(oArea);
	DelayCommand(0.1, MusicBackgroundPlay(oArea));
}
