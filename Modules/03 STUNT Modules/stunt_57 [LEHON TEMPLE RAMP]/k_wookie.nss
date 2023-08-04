void main() {
	if ((GetIsObjectValid(GetObjectByTag("Zaalbar", 0)) == 1)) {
		object oZaalbarSpeak = GetObjectByTag("ZaalbarSpeak", 0);
		SoundObjectPlay(oZaalbarSpeak);
	}
}

