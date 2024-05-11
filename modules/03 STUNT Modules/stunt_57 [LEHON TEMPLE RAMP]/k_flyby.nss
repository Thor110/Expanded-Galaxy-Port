void main() {
	PlayRoomAnimation("StuntRoom41ad", 1);
	DelayCommand(2.0, SoundObjectPlay(GetObjectByTag("Flyby01", 0)));
	DelayCommand(4.3, SoundObjectPlay(GetObjectByTag("Flyby02", 0)));
}
