// Prototypes
/*
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
void main() {
	int int1;
	int int2;
	int nPartyCount = GetPartyMemberCount();
	SetGlobalNumber("KOR_REMOVE_PCS", nPartyCount);
	int1 = 1;
	while ((int1 <= nPartyCount)) {
		int2 = 0;
		while ((int2 <= 8)) {
			{
				int int5 = IsNPCPartyMember(int2);
				if (int5) {
				if ((int5 != 0xFFFFFFFF)) {
					//sub1(((("KOR_REMOVE_PC" + IntToString((int1 - 1))) + ":") + IntToString(int2)), (4 + int1), (4 + int1), 5.0);
					SetGlobalNumber(("KOR_REMOVE_PC" + IntToString((int1 - 1))), int2);
					RemovePartyMember(int2);
					int2 = (8 + 1);
				}
				}
			}
			(int2++);
		}
		(int1++);
	}
}

