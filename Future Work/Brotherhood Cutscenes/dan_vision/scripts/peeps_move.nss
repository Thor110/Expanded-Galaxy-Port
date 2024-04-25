void main() {
	ActionPauseConversation();
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	AssignCommand(oMr_invis, ActionWait(5.0));
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oPC = GetFirstPC();
	vector struct2 = Vector(147.45, 130.28, 4.42);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(145.83, 129.56, 4.42);
	location location3 = Location(struct4, 0.0);
	vector struct6 = Vector(148.91, 129.56, 4.42);
	location location5 = Location(struct6, 0.0);
	object oSuperdoor = GetObjectByTag("Superdoor", 0);
	AssignCommand(oPC, ActionForceMoveToLocation(location1, 0, 30.0));
	DelayCommand(1.0, AssignCommand(oVision_malak, ActionForceMoveToLocation(location3, 0, 30.0)));
	AssignCommand(oVision_channa, ActionForceMoveToLocation(location5, 0, 30.0));
	DelayCommand(5.0, AssignCommand(oSuperdoor, ActionCloseDoor(oSuperdoor)));
	AssignCommand(oSuperdoor, SetLocked(oSuperdoor, 1));
	ActionResumeConversation();
}

