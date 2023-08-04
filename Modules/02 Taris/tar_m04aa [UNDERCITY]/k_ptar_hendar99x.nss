// Prototypes
void sub1(object objectParam1, int intParam2);

void sub1(object objectParam1, int intParam2) {
	ActionForceMoveToObject(objectParam1, intParam2, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	SetGlobalNumber("Tar_Hendar", 99);
	AssignCommand(GetObjectByTag("outcastman046", 0), sub1(GetObjectByTag("tar04_hendartent", 0), 0));
	AssignCommand(GetObjectByTag("OutcastWoman043", 0), sub1(GetObjectByTag("tar04_hendartent", 0), 0));
}

