// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	object oG_sithtroop04 = CreateObject(1, "g_sithtroop04", GetLocation(GetObjectByTag("lev40_wpsithspawn", 0)), 0);
	AssignCommand(oG_sithtroop04, ActionMoveToObject(objectParam1, 1, 1.0));
}

void main() {
	AddPartyMember(2, GetObjectByTag("Carth", 0));
	AddPartyMember(0, GetObjectByTag("Bastila", 0));
	DelayCommand(3.0, sub1(GetObjectByTag("lev40_party0", 0)));
	DelayCommand(6.0, sub1(GetObjectByTag("lev40_party1", 0)));
	DelayCommand(9.0, sub1(GetObjectByTag("lev40_party2", 0)));
	SoundObjectPlay(GetObjectByTag("lev40_alarm", 0));
}

