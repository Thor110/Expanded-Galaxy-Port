void main() {
	if ((!GetGlobalBoolean("KOR_PC_INTERROGATE"))) {
		object oKor35_torturecomp = GetObjectByTag("kor35_torturecomp", 0);
		vector vPosition = GetPosition(oKor35_torturecomp);
		SetFacingPoint(vPosition);
	}
}

