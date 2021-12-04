void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if ((((GetGlobalNumber("Ebo_Sasha_State") == 0) && (GetGlobalNumber("K_Current_Planet") > 15)) && IsAvailableCreature(8))) {
			SetGlobalNumber("Ebo_Sasha_State", 10);
			AssignCommand(GetObjectByTag("Zaalbar", 0), ActionStartConversation(GetFirstPC(), "ebo_zal", 0, 0, 1, "", "", "", "", "", "", 0));
		}
		if (((((GetGlobalNumber("Ebo_Sasha_State") >= 10) && (GetGlobalNumber("Ebo_Sasha_State") != 99)) && (GetGlobalNumber("K_Star_Map") >= 40)) && IsAvailableCreature(8))) {
			DestroyObject(GetObjectByTag("sasha", 0), 0.0, 0, 0.0);
			SetGlobalNumber("Ebo_Sasha_State", 99);
			AssignCommand(GetObjectByTag("Zaalbar", 0), ActionStartConversation(GetFirstPC(), "ebo_zal", 0, 0, 1, "", "", "", "", "", "", 0));
		}
		else {
			if (((((GetGlobalNumber("Ebo_Sasha_State") >= 10) && (GetGlobalNumber("Ebo_Sasha_State") != 99)) && (GetGlobalNumber("K_Star_Map") >= 40)) && IsAvailableCreature(7))) {
				DestroyObject(GetObjectByTag("sasha", 0), 0.0, 0, 0.0);
				SetGlobalNumber("Ebo_Sasha_State", 99);
				AssignCommand(GetObjectByTag("T3M4", 0), ActionStartConversation(GetFirstPC(), "ebo_T3M4", 0, 0, 1, "", "", "", "", "", "", 0));
			}
		}
	}
}

