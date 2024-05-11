void main() {
	object oNearestTrooper1 = GetNearestObjectByTag("Trooper1", OBJECT_SELF, 1);
	object oNearestBith = GetNearestObjectByTag("Bith", OBJECT_SELF, 1);
	object oNPC = GetPartyMemberByIndex(1);
	ActionPauseConversation();
	DelayCommand(5.2, ActionResumeConversation());
	ChangeToStandardFaction(oNearestTrooper1, 2);
	ChangeToStandardFaction(oNearestBith, 4);
	ApplyEffectToObject(1, EffectAssuredHit(), oNearestTrooper1, 5.0);
	DelayCommand(0.3, AssignCommand(oNearestTrooper1, ActionAttack(oNearestBith, 0)));
	DelayCommand(1.08, SetDialogPlaceableCamera(5));
}
