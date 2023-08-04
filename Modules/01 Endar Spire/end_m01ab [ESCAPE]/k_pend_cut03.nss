// Globals
	string stringGLOB_1 = "end_trask";
// Prototypes
object sub1();

object sub1() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void main() {
	object oEnd_droid03 = GetObjectByTag("end_droid03", 0);
	ChangeToStandardFaction(oEnd_droid03, 1);
	ChangeToStandardFaction(sub1(), 2);
	AssignCommand(oEnd_droid03, ActionAttack(sub1(), 0));
}

