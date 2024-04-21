void main() {
	object oExiting = GetExitingObject();
	if ((GetIsPC(oExiting) && (GetGlobalNumber("Tar_Sarna") == 99))) {
		SoundObjectFadeAndStop(GetObjectByTag("tar02_partymusica", 0), 1.5);
	}
}
