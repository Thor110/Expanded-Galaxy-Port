// Prototypes
void sub2(object objectParam1, int intParam2);
void sub1();

void sub2(object objectParam1, int intParam2) {
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));//2
	ActionForceMoveToObject(objectParam1, intParam2, 1.0, 30.0);//1
	SetCommandable(0, OBJECT_SELF);//3
}

void sub1() {
	ChangeToStandardFaction(OBJECT_SELF, 1);
	sub2(GetObjectByTag("tar05_wprancor", 0), 0);
}

void main() {
	object oTar05_stampy = GetObjectByTag("tar05_stampy", 0);
	SetGlobalBoolean("TAR_RANCOREATING", 0);
	DelayCommand(1.0, AssignCommand(oTar05_stampy, sub1()));
}

