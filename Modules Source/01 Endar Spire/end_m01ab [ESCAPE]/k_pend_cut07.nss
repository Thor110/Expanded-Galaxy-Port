// Globals
	string stringGLOB_1 = "end_trask";
// Prototypes
object sub1();

object sub1() {
	return GetObjectByTag(stringGLOB_1, 0);
}

int StartingConditional() {
	AssignCommand(sub1(), ClearAllActions());
	AssignCommand(sub1(), ActionMoveToObject(GetObjectByTag("end_wp_pchurt02", 0), 0, 1.0));
	return 1;
}

