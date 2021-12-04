void main() {
	if (((((GetEnteringObject() == GetFirstPC()) && (GetGlobalNumber("Ebo_Sasha_State") >= 20)) && (GetGlobalNumber("Ebo_Sasha_State") < 40)) && (GetGlobalNumber("Ebo_TriggerCount") >= 3))) {
		DestroyObject(GetObjectByTag("sasha", 0), 0.0, 0, 0.0);
		CreateObject(1, "sasha", GetLocation(GetObjectByTag("SashaSpawn", 0)), 0);
		DelayCommand(0.2, AssignCommand(GetObjectByTag("Sasha", 0), ActionMoveToObject(GetObjectByTag("Supplies", 0), 0, 0.5)));
		DelayCommand(8.0, SignalEvent(GetObjectByTag("Sasha", 0), EventUserDefined(667)));
		ActionStartConversation(GetFirstPC(), "ebo_suptrig", 0, 0, 0, "", "", "", "", "", "", 0);
	}
}

