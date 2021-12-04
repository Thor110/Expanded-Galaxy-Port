void main() {
	object oNearestKor37_obelisk = GetNearestObjectByTag("kor37_obelisk", OBJECT_SELF, 1);
	if (GetIsObjectValid(oNearestKor37_obelisk)) {
		DestroyObject(oNearestKor37_obelisk, 0.0, 0, 0.0);
	}
}

