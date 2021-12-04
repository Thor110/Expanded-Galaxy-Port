// Prototypes
void sub2();
void sub1();

void sub2() {
	object oFlyby02 = GetObjectByTag("Flyby02", 0);
	SoundObjectPlay(oFlyby02);
}

void sub1() {
	object oFlyby01 = GetObjectByTag("Flyby01", 0);
	SoundObjectPlay(oFlyby01);
}

void main() {
	PlayRoomAnimation("StuntRoom41ad", 1);
	DelayCommand(2.0, sub1());
	DelayCommand(4.3, sub2());
}

