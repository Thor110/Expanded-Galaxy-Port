void main() {
	object oKas25_mandalor04;
	if ((GetTag(OBJECT_SELF) == "kas25_mandswoop")) {
		oKas25_mandalor04 = GetObjectByTag("kas25_mandcomm", 0);
	}
	else {
		if ((GetTag(OBJECT_SELF) == "kas25_mandswoop2")) {
			oKas25_mandalor04 = GetObjectByTag("kas25_mandalor03", 0);
		}
		else {
			if ((GetTag(OBJECT_SELF) == "kas25_mandswoop3")) {
				oKas25_mandalor04 = GetObjectByTag("kas25_mandalor04", 0);
			}
		}
	}
	effect efNext = GetFirstEffect(oKas25_mandalor04);
	while ((GetIsEffectValid(efNext) == 1)) {
		RemoveEffect(oKas25_mandalor04, efNext);
		efNext = GetNextEffect(oKas25_mandalor04);
	}
}

