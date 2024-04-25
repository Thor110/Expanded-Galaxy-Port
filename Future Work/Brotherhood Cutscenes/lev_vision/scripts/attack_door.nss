void main() {
	ActionPauseConversation();
	ActionWait(7.0);
	object oLev40_stddoor = GetObjectByTag("lev40_stddoor", 0);
	object oJedi1 = GetObjectByTag("jedi1", 0);
	object oJedi2 = GetObjectByTag("jedi2", 0);
	object oJedi3 = GetObjectByTag("jedi3", 0);
	object oTrooper3 = GetObjectByTag("trooper3", 0);
	object oRepublic_cap = GetObjectByTag("republic_cap", 0);
	effect effect1 = EffectCutSceneParalyze();
	effect1 = EffectLinkEffects(effect1, EffectVisualEffect(2008, 0));
	vector struct2 = Vector(141.03, 53.3, 3.0);
	location location1 = Location(struct2, 0.0);
	CreateObject(1, "jedi4", location1, 0);
	CreateObject(1, "jedi3", location1, 0);
	vector struct4 = Vector(141.03, 56.9, 3.0);
	location location3 = Location(struct4, 0.0);
	CreateObject(1, "jedi5", location3, 0);
	CreateObject(1, "republic_cap", location3, 0);
	vector struct6 = Vector(188.03, 57.65, 3.0);
	location location5 = Location(struct6, 0.0);
	vector struct8 = Vector(171.74, 53.6, 3.0);
	location location7 = Location(struct8, 0.0);
	vector struct10 = Vector(170.03, 56.38, 3.0);
	location location9 = Location(struct10, 0.0);
	DelayCommand(0.6, SetLightsaberPowered(oJedi1, 1, 1, 1));
	DelayCommand(0.0, AssignCommand(oLev40_stddoor, ActionOpenDoor(oLev40_stddoor)));
	DelayCommand(1.5, AssignCommand(oJedi1, ActionForceMoveToLocation(location7, 1, 30.0)));
	DelayCommand(2.0, AssignCommand(oJedi2, ActionForceMoveToLocation(location9, 1, 30.0)));
	AssignCommand(oJedi2, ActionCastFakeSpellAtObject(29, oTrooper3, 0));
	AssignCommand(oJedi2, ActionDoCommand(ApplyEffectToObject(2, effect1, oTrooper3, 0.0)));
	AssignCommand(oJedi2, ActionDoCommand(SetCommandable(1, OBJECT_SELF)));
	ChangeToStandardFaction(GetObjectByTag("trooper3", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("jedi2", 0), 4);
	ActionResumeConversation();
}

