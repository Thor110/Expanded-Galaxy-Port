void main() {
	object oEntering = GetEnteringObject();
	if (((GetGlobalNumber("YAV_GIZKA") == 1) && (GetGlobalNumber("YAV_SUVAM") > 0))) {
		PlaySound("cs_gizkabeg");
		if ((GetIsPC(oEntering) == 1)) {
			AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionStartConversation(oEntering, "yav47_gizkas", 0, 0, 0, "", "", "", "", "", "", 0));
		}
	}
}

