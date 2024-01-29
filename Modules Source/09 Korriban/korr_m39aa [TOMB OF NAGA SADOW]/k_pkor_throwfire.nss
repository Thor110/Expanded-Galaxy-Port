void main() {
	ActionPauseConversation();
	object oPC = GetFirstPC();
	AssignCommand(oPC, ActionPlayAnimation(117, 1.0, 2.0));
	effect efVisual = EffectVisualEffect(3010, 0);
	object oK39_way_grenade = GetObjectByTag("k39_way_grenade", 0);
	location location1 = GetLocation(oK39_way_grenade);
	DelayCommand(1.0, ApplyEffectAtLocation(1, efVisual, location1, 2.0));
	object oK39_way_gascloud = GetObjectByTag("k39_way_gascloud", 0);
	location location3 = GetLocation(oK39_way_gascloud);
	CreateObject(64, "k39_plc_gascloud", location3, 0);
	object oK39_way_gasclou1 = GetObjectByTag("k39_way_gasclou1", 0);
	location location5 = GetLocation(oK39_way_gasclou1);
	CreateObject(64, "k39_plc_gascloud", location5, 0);
	object oK39_way_gasclou2 = GetObjectByTag("k39_way_gasclou2", 0);
	location location7 = GetLocation(oK39_way_gasclou2);
	CreateObject(64, "k39_plc_gascloud", location7, 0);
	ActionWait(2.0);
	ActionResumeConversation();
}

