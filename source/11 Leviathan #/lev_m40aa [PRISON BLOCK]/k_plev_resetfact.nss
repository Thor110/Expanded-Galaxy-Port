void main() {
	object oLev40_starguard;
	int int1 = 0;
	while ((int1 < 6)) {
		oLev40_starguard = GetObjectByTag("lev40_portslave", int1);
		if (GetIsObjectValid(oLev40_starguard)) {
			ChangeToStandardFaction(oLev40_starguard, 3);
		}
		oLev40_starguard = GetObjectByTag("lev40_starslave", int1);
		if (GetIsObjectValid(oLev40_starguard)) {
			ChangeToStandardFaction(oLev40_starguard, 3);
		}
		oLev40_starguard = GetObjectByTag("lev40_portguard", int1);
		if (GetIsObjectValid(oLev40_starguard)) {
			ChangeToStandardFaction(oLev40_starguard, 1);
		}
		oLev40_starguard = GetObjectByTag("lev40_starguard", int1);
		if (GetIsObjectValid(oLev40_starguard)) {
			ChangeToStandardFaction(oLev40_starguard, 1);
		}
		(int1++);
	}
}

