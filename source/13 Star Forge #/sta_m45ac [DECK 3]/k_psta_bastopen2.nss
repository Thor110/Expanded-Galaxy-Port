// Prototypes
void sub1();

void sub1() {
	StartNewModule("STUNT_51a", "", "54", "", "", "", "", "");
}

void main() {
	location location1 = GetLocation(OBJECT_SELF);
	object oK45_door_bast1 = GetObjectByTag("k45_door_bast1", 0);
	object oK45_door_bast2 = GetObjectByTag("k45_door_bast2", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.5, sub1());
}

