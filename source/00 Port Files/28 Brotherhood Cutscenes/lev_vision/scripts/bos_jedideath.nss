void main() {
	object oJedi1_bridge = GetObjectByTag("jedi1_bridge", 0);
	object oJedi2_bridge = GetObjectByTag("jedi2_bridge", 0);
	object oJedi3_bridge = GetObjectByTag("jedi3_bridge", 0);
	object oTun_guy = GetObjectByTag("tun_guy", 0);
	object oRevan_bastila2 = GetObjectByTag("revan_bastila2", 0);
	if ((((((!GetIsObjectValid(oJedi1_bridge)) || GetIsDead(oJedi1_bridge)) && ((!GetIsObjectValid(oJedi2_bridge)) || GetIsDead(oJedi2_bridge))) && ((!GetIsObjectValid(oJedi3_bridge)) || GetIsDead(oJedi3_bridge))) && (GetIsObjectValid(oTun_guy) == 1))) {
		object oPC = GetFirstPC();
		AssignCommand(oPC, CancelCombat(oPC));
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ClearAllEffects());
		SetGlobalFadeOut(2.0, 2.0, 0.0, 0.0, 0.0);
		AssignCommand(oRevan_bastila2, ClearAllActions());
		AssignCommand(oRevan_bastila2, ActionWait(4.0));
		AssignCommand(oRevan_bastila2, ActionStartConversation(oPC, "revan_bastila", 0, 0, 1, "", "", "", "", "", "", 0));
	}
	SpeakString("GEN_I_AM_DEAD", 3);
	SpeakString("GEN_ATTACK_MY_TARGET", 3);
	SignalEvent(OBJECT_SELF, EventUserDefined(1007));
}

