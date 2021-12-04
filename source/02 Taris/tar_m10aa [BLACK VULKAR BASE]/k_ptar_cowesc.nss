// Prototypes
void sub1(object objectParam1, int intParam2);

void sub1(object objectParam1, int intParam2) {
	ActionForceMoveToObject(objectParam1, intParam2, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	object object1 = OBJECT_SELF;
	DelayCommand(12.0, DestroyObject(object1, 0.0, 0, 0.0));
	sub1(GetObjectByTag("wp_03_02", 0), 1);
}

