void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	if (GetIsPC(GetEnteringObject())) {
		AssignCommand(oSta_45darthMalak, PlayAnimation(1, 1.0, (-1.0)));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

