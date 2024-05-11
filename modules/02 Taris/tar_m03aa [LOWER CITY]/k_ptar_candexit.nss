void main() {
	object object1 = OBJECT_SELF;
	DelayCommand(6.0, DestroyObject(object1, 0.0, 0, 0.0));
	ActionForceMoveToObject(GetObjectByTag("tar03_wpnpcext", 0), 0, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}
