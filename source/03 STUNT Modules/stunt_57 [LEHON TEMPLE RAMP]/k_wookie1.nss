void main() {
	if ((GetIsObjectValid(GetObjectByTag("Zaalbar", 0)) == 1)) {
		object oZaalbarSpeak1 = GetObjectByTag("ZaalbarSpeak1", 0);
		SoundObjectPlay(oZaalbarSpeak1);
	}
}

