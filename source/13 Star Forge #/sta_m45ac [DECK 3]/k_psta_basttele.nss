// Prototypes
void sub1(object objectParam1, location locationParam2);

void sub1(object objectParam1, location locationParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	if ((GetCurrentHitPoints(objectParam1) < 1)) {
		ApplyEffectToObject(0, EffectResurrection(), objectParam1, 0.0);
		ApplyEffectToObject(0, EffectHeal(1), objectParam1, 0.0);
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToLocation(locationParam2));
}

void main() {
	object oNPC = GetPartyMemberByIndex(1);
	object object3 = GetPartyMemberByIndex(2);
	object oSta_way_party1 = GetObjectByTag("sta_way_party1", 0);
	object oSta_way_party2 = GetObjectByTag("sta_way_party2", 0);
	location location1 = GetLocation(oSta_way_party1);
	location location3 = GetLocation(oSta_way_party2);
	effect efParalyze = EffectParalyze();
	effect efVisual = EffectVisualEffect(2008, 0);
	if (GetIsObjectValid(oNPC)) {
		sub1(oNPC, location1);
	}
	if (GetIsObjectValid(object3)) {
		sub1(object3, location3);
	}
}

