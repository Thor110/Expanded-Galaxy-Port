// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oK_sta_sithfreeze = GetObjectByTag("k_sta_sithfreeze", 0);
	object oK_sta_sithfreeze2 = GetObjectByTag("k_sta_sithfreeze2", 0);
	object oK_sta_sithfreeze3 = GetObjectByTag("k_sta_sithfreeze3", 0);
	object oNearestSTA_HORDE_SPAWN = GetNearestObjectByTag("STA_HORDE_SPAWN", oK_sta_sithfreeze, 1);
	sub1(2.8);
	AssignCommand(oK_sta_sithfreeze, SetFacing(GetFacing(oNearestSTA_HORDE_SPAWN)));
	DelayCommand(0.1, AssignCommand(oK_sta_sithfreeze2, SetFacing(GetFacing(oNearestSTA_HORDE_SPAWN))));
	DelayCommand(0.3, AssignCommand(oK_sta_sithfreeze3, SetFacing(GetFacing(oNearestSTA_HORDE_SPAWN))));
	DelayCommand(1.0, AssignCommand(oK_sta_sithfreeze, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
	DelayCommand(1.5, AssignCommand(oK_sta_sithfreeze2, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
	DelayCommand(1.8, AssignCommand(oK_sta_sithfreeze3, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
}

