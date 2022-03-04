void main() {
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	object oSta_Jedi001 = GetObjectByTag("sta_Jedi001", 0);
	RemovePartyMember(8);
	ChangeToStandardFaction(oZaalbar, 3);
	AssignCommand(oZaalbar, ActionAttack(oSta_Jedi001, 0));
}

