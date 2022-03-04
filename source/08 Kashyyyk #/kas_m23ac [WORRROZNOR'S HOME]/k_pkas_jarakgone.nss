void main() {
	object oPC = GetFirstPC();
	object oKas23_woorwil_01 = GetObjectByTag("kas23_woorwil_01", 0);
	object oKas23_jaarak_01 = GetObjectByTag("kas23_jaarak_01", 0);
	object object7 = GetItemPossessedBy(oPC, "kas24_bowcasbolt");
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DestroyObject(oKas23_woorwil_01, 0.0, 1, 0.0);
	DestroyObject(oKas23_jaarak_01, 0.0, 1, 0.0);
	DestroyObject(object7, 0.0, 0, 0.0);
}

