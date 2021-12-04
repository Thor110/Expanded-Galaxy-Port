void main() {
	object oNPC = GetPartyMemberByIndex(0);
	location location1 = GetLocation(oNPC);
	effect efVisual = EffectVisualEffect(3006, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
}

