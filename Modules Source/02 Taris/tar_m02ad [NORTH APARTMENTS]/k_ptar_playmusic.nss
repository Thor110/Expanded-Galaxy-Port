void main() {
	object oEntering = GetEnteringObject();
	if ((GetIsPC(oEntering) && GetLocalBoolean(OBJECT_SELF, 0) > 0)) {
		SoundObjectPlay(GetObjectByTag("tar02_partymusica", 0));
	}
}
