void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oJedi1_bridge = GetObjectByTag("jedi1_bridge", 0);
	object oJedi2_bridge = GetObjectByTag("jedi2_bridge", 0);
	object oRepublic_cap2 = GetObjectByTag("republic_cap2", 0);
	ChangeToStandardFaction(GetObjectByTag("sith_bridge", 0), 12);
	ChangeToStandardFaction(GetObjectByTag("revan_bastila", 0), 11);
	vector struct2 = Vector(280.66, 56.21, 9.1);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(280.66, 53.69, 9.1);
	location location3 = Location(struct4, 0.0);
	AssignCommand(oRepublic_cap2, ActionPlayAnimation(116, 1.0, 999.0));
	DelayCommand(5.0, AssignCommand(oJedi1_bridge, ActionForceMoveToLocation(location1, 1, 30.0)));
	DelayCommand(5.0, AssignCommand(oJedi2_bridge, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(5.5, AssignCommand(oRepublic_cap2, ClearAllEffects()));
	DelayCommand(5.5, AssignCommand(oJedi1_bridge, ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("republic_cap2", 0), 0.0)));
	ActionResumeConversation();
}

