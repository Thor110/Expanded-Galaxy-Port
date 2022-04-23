void main() {
	SetGlobalBoolean("KOR_PRISONERS_FREE", 1);
	SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0);
	object oNearestKor35_captive4 = GetNearestObjectByTag("kor35_captive7", OBJECT_SELF, 1);
	DestroyObject(oNearestKor35_captive4, 0.0, 1, 0.0);
	oNearestKor35_captive4 = GetNearestObjectByTag("kor35_captive8", OBJECT_SELF, 1);
	DestroyObject(oNearestKor35_captive4, 0.0, 1, 0.0);
	oNearestKor35_captive4 = GetNearestObjectByTag("kor35_captive3", OBJECT_SELF, 1);
	DestroyObject(oNearestKor35_captive4, 0.0, 1, 0.0);
	oNearestKor35_captive4 = GetNearestObjectByTag("kor35_captive4", OBJECT_SELF, 1);
	DestroyObject(oNearestKor35_captive4, 0.0, 1, 0.0);
	object oKor35_sithlight = GetObjectByTag("kor35_sithlight", 0);
	DestroyObject(oKor35_sithlight, 0.0, 1, 0.0);
	DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
	SetGlobalFadeIn(2.0, 1.0, 0.0, 0.0, 0.0);
}

