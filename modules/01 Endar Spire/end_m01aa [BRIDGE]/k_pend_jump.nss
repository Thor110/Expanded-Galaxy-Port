// Globals
	string stringGLOB_1 = "end_trask";
// Prototypes
void sub2(float floatParam1);
object sub1();

void sub2(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

object sub1() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void main() {
	location location1 = GetLocation(GetObjectByTag("end_jump_pc", 0));
	location location3 = GetLocation(GetObjectByTag("end_jump_trask", 0));
	object oNearestEnd_door10_cut2 = GetNearestObjectByTag("end_door10_cut2", OBJECT_SELF, 1);
	object object5 = sub1();
	object oPC = GetFirstPC();
	object oEnd_cut2_sith1 = GetObjectByTag("end_cut2_sith1", 0);
	object oEnd_cut2_sith2 = GetObjectByTag("end_cut2_sith2", 0);
	object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
	object oEnd_cut2_sith4 = GetObjectByTag("end_cut2_sith4", 0);
	object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
	object oEnd_cut2_soldier1 = GetObjectByTag("end_cut2_soldier1", 0);
	object oEnd_cut2_soldier2 = GetObjectByTag("end_cut2_soldier2", 0);
	object oEnd_cut2_soldier3 = GetObjectByTag("end_cut2_soldier3", 0);
	object oEnd_cut2_soldier4 = GetObjectByTag("end_cut2_soldier4", 0);
	sub2(2.0);
	AssignCommand(oEnd_cut2_soldier1, CutsceneAttack(oEnd_cut2_sith2, 239, 4, 0));
	DelayCommand(0.1, AssignCommand(oEnd_cut2_soldier2, CutsceneAttack(oEnd_cut2_sith1, 239, 4, 0)));
	DelayCommand(0.3, AssignCommand(oEnd_cut2_sith5, CutsceneAttack(oEnd_cut2_soldier3, 239, 4, 0)));
	AssignCommand(oEnd_cut2_soldier4, CutsceneAttack(oEnd_cut2_sith3, 139, 4, 0));
	DelayCommand(0.2, AssignCommand(oEnd_cut2_sith1, CutsceneAttack(oEnd_cut2_soldier1, 239, 4, 0)));
	DelayCommand(0.7, AssignCommand(oEnd_cut2_sith4, CutsceneAttack(oEnd_cut2_soldier2, 239, 4, 0)));
	AssignCommand(oPC, JumpToLocation(location1));
	AssignCommand(object5, JumpToLocation(location3));
	AssignCommand(oNearestEnd_door10_cut2, ActionCloseDoor(OBJECT_SELF));
	SetLocked(oNearestEnd_door10_cut2, 1);
}

