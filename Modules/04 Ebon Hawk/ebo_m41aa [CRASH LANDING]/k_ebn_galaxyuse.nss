// Prototypes
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
int sub1();

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

int sub1() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((nGlobal == 5)) {
		return 0;
	}
	else {
		if ((nGlobal == 10)) {
			return 1;
		}
		else {
			if ((nGlobal == 15)) {
				return 3;
			}
			else {
				if ((nGlobal == 20)) {
					return 5;
				}
				else {
					if ((nGlobal == 25)) {
						return 6;
					}
					else {
						if ((nGlobal == 30)) {
							return 7;
						}
						else {
							if ((nGlobal == 35)) {
								return 4;
							}
							else {
								if ((nGlobal == 40)) {
									return 8;
								}
								else {
									if ((nGlobal == 45)) {
										return 9;
									}
									else {
										if ((nGlobal == 50)) {
											return 10;
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
	return (-1);
}

void main() {
	int int1 = sub1();
	if ((int1 == (-1))) {
		(int1 == 3);
	}
	int nGlobal = GetGlobalNumber("K_KOTOR_MASTER");
	if ((nGlobal == 10)) {
		SetPlanetAvailable(3, 1);
		SetPlanetSelectable(3, 1);
	}
	if ((nGlobal == 15)) {
		SetPlanetAvailable(5, 1);
		SetPlanetSelectable(5, 1);
		SetPlanetAvailable(6, 1);
		SetPlanetSelectable(6, 1);
		SetPlanetAvailable(7, 1);
		SetPlanetSelectable(7, 1);
		SetPlanetAvailable(4, 1);
		SetPlanetSelectable(4, 1);
	}
	if ((nGlobal == 20)) {
		SetPlanetSelectable(2, 0);
	}
	if ((nGlobal == 30)) {
		SetPlanetSelectable(5, 0);
		SetPlanetSelectable(6, 0);
		SetPlanetSelectable(7, 0);
		SetPlanetSelectable(4, 0);
		SetPlanetAvailable(9, 1);
		SetPlanetSelectable(9, 1);
	}
	if ((nGlobal == 50)) {
		SetPlanetSelectable(9, 0);
		SetPlanetAvailable(10, 1);
		SetPlanetSelectable(10, 1);
	}
	sub2("GALAXY MAP", 5, 5, 5.0);
	DelayCommand(1.0, ShowGalaxyMap(9));
}

