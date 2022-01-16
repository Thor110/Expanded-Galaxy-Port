void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	if ((GetIsObjectValid(oEntering) && (oEntering == oPC))) {
		DestroyObject(GetObjectByTag("sta45a_Sith01", 0), 0.0, 0, 0.0);
		DestroyObject(GetObjectByTag("sta45a_Sith02", 0), 0.0, 0, 0.0);
		DestroyObject(GetObjectByTag("sta45a_Sith03", 0), 0.0, 0, 0.0);
		DestroyObject(GetObjectByTag("sta45a_Sith04", 0), 0.0, 0, 0.0);
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

