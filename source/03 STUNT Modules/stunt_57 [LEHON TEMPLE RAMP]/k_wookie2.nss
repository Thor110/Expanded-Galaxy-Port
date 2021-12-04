void main() {
	if ((GetIsObjectValid(GetObjectByTag("Zaalbar", 0)) == 1)) {
		object oZaalbarSpeak2 = GetObjectByTag("ZaalbarSpeak2", 0);
		SoundObjectPlay(oZaalbarSpeak2);
	}
}

