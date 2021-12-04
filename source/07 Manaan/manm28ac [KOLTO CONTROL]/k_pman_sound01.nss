void main() {
	SoundObjectPlay(GetObjectByTag("man28_decom01", 0));
	DelayCommand(1.0, SoundObjectPlay(GetObjectByTag("man28_decom03", 0)));
}

