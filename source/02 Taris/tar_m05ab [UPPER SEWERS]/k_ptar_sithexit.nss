// Prototypes
void sub1(object objectParam1, int intParam2);

void sub1(object objectParam1, int intParam2) {
	ActionForceMoveToObject(objectParam1, intParam2, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	object oTar05_sithext = GetObjectByTag("tar05_sithext", 0);
	sub1(oTar05_sithext, 0);
	DelayCommand(6.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	AssignCommand(GetObjectByTag("tar05_sithtrooper", 0), sub1(oTar05_sithext, 0));
	DelayCommand(6.0, DestroyObject(GetObjectByTag("tar05_sithtrooper", 0), 0.0, 0, 0.0));
	AssignCommand(GetObjectByTag("tar05_sithtrooper", 1), sub1(oTar05_sithext, 0));
	DelayCommand(6.0, DestroyObject(GetObjectByTag("tar05_sithtrooper", 1), 0.0, 0, 0.0));
}

