void main() {
	object oK45_plc_excharge = GetObjectByTag("k45_plc_excharge", 0);
	if ((GetGlobalBoolean("STA_MALAK_START") && GetIsObjectValid(oK45_plc_excharge))) {
		object oK45c_way_explosi = GetObjectByTag("k45c_way_explosi", 0);
		location location1 = GetLocation(oK45c_way_explosi);
		object oShapeObject = GetFirstObjectInShape(4, 3.33, location1, 0, 1, [0.0,0.0,0.0]);
		location location3 = GetLocation(oShapeObject);
		int int3 = d20(1);
		effect efDamage = EffectDamage(int3, 256, 0);
		ApplyEffectAtLocation(0, efDamage, location3, 0.0);
		effect efVisual = EffectVisualEffect(3010, 0);
		ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	}
}

