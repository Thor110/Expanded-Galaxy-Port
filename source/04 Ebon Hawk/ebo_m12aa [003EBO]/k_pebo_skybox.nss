// Prototypes
void sub2(string stringParam1);
void sub1();

void sub2(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub1() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((GetGlobalBoolean("K_SPACE_SKYBOX_ON") == 1)) {
		sub2("Firing Anim 09 for Space");
		sub2("New Print Line Confirmation");
		PlayRoomAnimation("m12aa_01q", 9);
		SetGlobalBoolean("K_SPACE_SKYBOX_ON", 0);
	}
	else {
		if ((nGlobal == 15)) {
			sub2("Firing Anim 02 for Dantooine");
			PlayRoomAnimation("m12aa_01q", 2);
		}
		else {
			if ((nGlobal == 20)) {
				sub2("Firing Anim 01 for Kashyyyk");
				PlayRoomAnimation("m12aa_01q", 1);
			}
			else {
				if ((nGlobal == 25)) {
					sub2("Firing Anim 06 for Manaan");
					PlayRoomAnimation("m12aa_01q", 6);
				}
				else {
					if ((nGlobal == 30)) {
						sub2("Firing Anim 05 for Korriban");
						PlayRoomAnimation("m12aa_01q", 5);
					}
					else {
						if ((nGlobal == 35)) {
							sub2("Firing Anim 04 for Tatooine");
							PlayRoomAnimation("m12aa_01q", 4);
						}
						else {
							if ((nGlobal == 40)) {
								sub2("Firing Anim 08 for Leviathan");
								PlayRoomAnimation("m12aa_01q", 8);
							}
							else {
								if ((nGlobal == 45)) {
									sub2("Firing Anim 07 for Unknown World");
									PlayRoomAnimation("m12aa_01q", 7);
								}
								else {
									if ((nGlobal == 50)) {
										sub2("Firing Anim 03 for Star Forge");
										PlayRoomAnimation("m12aa_01q", 3);
									}
									else {
										if ((nGlobal > 50)) {
											sub2("Firing Anim 10 for all live content planets");
											PlayRoomAnimation("m12aa_01q", 10);
										}
										else {
											PlayRoomAnimation("m12aa_01q", 9);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

void main() {
	sub1();
}

