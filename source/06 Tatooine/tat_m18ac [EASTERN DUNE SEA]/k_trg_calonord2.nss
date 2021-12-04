// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	string string1;
	string string2;
	string1 = "tat_bandon_thug1";
	string2 = "tat_bandon_thug2";
	CreateObject(1, string1, GetLocation(GetObjectByTag("wp_tat_enemy1", 0)), 0);
	CreateObject(1, string2, GetLocation(GetObjectByTag("wp_tat_enemy2", 0)), 0);
	CreateObject(64, "tat_bandon_bike2", GetLocation(GetObjectByTag("wp_bandon_bike1", 0)), 0);
	CreateObject(64, "tat_bandon_bike2", GetLocation(GetObjectByTag("wp_bandon_bike2", 0)), 0);
	CreateObject(64, "tat_bandon_bike2", GetLocation(GetObjectByTag("wp_bandon_bike3", 0)), 0);
}

void main() {
	object oEntering = GetEnteringObject();
	string string1 = "tat_bandon";
	int nGlobal = GetGlobalNumber("K_KALO_BANDON");
	if ((((nGlobal == 10) && GetIsPC(oEntering)) && (GetGlobalBoolean("TAT_CALO_TRIGGER_SET") != 1))) {
		SetGlobalNumber("K_KALO_BANDON", 20);
		SetGlobalBoolean("TAT_CALO_TRIGGER_SET", 1);
		vector vPosition = GetPosition(GetObjectByTag("ambush_rider_walrus1", 0));
		vector struct4 = GetPosition(GetObjectByTag("ambush_rider_walrus2", 0));
		vector struct6 = GetPosition(GetObjectByTag("ambush_rider_rodian1", 0));
		vector struct8 = GetPosition(GetObjectByTag("ambush_rider_rodian2", 0));
		float float13 = 0.5;
		vector struct10 = Vector(vPosition.x, vPosition.y, (vPosition.z + float13));
		vector struct12 = Vector(struct4.x, struct4.y, (struct4.z + float13));
		vector struct14 = Vector(struct6.x, struct6.y, (struct6.z + float13));
		vector struct16 = Vector(struct8.x, struct8.y, (struct8.z + float13));
		location location1 = Location(struct10, GetFacing(GetObjectByTag("ambush_rider_walrus1", 0)));
		location location3 = Location(struct12, GetFacing(GetObjectByTag("ambush_rider_walrus2", 0)));
		location location5 = Location(struct14, GetFacing(GetObjectByTag("ambush_rider_rodian1", 0)));
		location location7 = Location(struct16, GetFacing(GetObjectByTag("ambush_rider_rodian2", 0)));
		CreateObject(64, "calo_leg_cover", GetLocation(GetObjectByTag("calo_leg_cover_wp", 0)), 0);
		CreateObject(64, "ambush_speeder2", GetLocation(GetObjectByTag("bp_calo_ambush_bike2_wp", 0)), 0);
		CreateObject(64, "ambush_speeder2", GetLocation(GetObjectByTag("bp_calo_ambush_bike3_wp", 0)), 0);
		CreateObject(1, "bp_calo_ambush", GetLocation(GetObjectByTag("bp_calo_ambush_wp2", 0)), 0);
		CreateObject(64, "tat_calo_bike", GetLocation(GetObjectByTag("bp_calo_ambush_wp", 0)), 0);
		CreateObject(64, "sittingselkath", location1, 0);
		CreateObject(64, "sittingselkath", location5, 0);
		CreateObject(64, "sittingrodian", location3, 0);
		CreateObject(64, "sittingrodian", location7, 0);
		DelayCommand(0.3, AssignCommand(GetObjectByTag("SittingSelkath", 0), ActionPlayAnimation(204, 1.0, 0.0)));
		DelayCommand(0.4, AssignCommand(GetObjectByTag("SittingSelkath", 1), ActionPlayAnimation(206, 1.0, 0.0)));
		DelayCommand(0.5, AssignCommand(GetObjectByTag("SittingRodian", 0), ActionPlayAnimation(204, 1.0, 0.0)));
		DelayCommand(0.6, AssignCommand(GetObjectByTag("SittingRodian", 1), ActionPlayAnimation(206, 1.0, 0.0)));
	}
	else {
		if ((((nGlobal == 30) && GetIsPC(oEntering)) && (GetGlobalBoolean("TAT_CALO_TRIGGER_SET") != 1))) {
			SetGlobalBoolean("TAT_BANDON_TRIG_SET", 1);
			SetGlobalNumber("K_KALO_BANDON", 40);
			sub1(string1);
			CreateObject(1, string1, GetLocation(GetObjectByTag("wp_tat_bandon", 0)), 0);
		}
	}
}

