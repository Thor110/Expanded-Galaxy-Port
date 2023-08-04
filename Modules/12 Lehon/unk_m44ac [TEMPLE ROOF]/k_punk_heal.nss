// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	sub1("v2.0 HEALING", 5, 5, 4.0);
	object oAreaObject;
	object oBastila = GetObjectByTag("bastila", 0);
	int int1 = 1;
	effect efHeal;
	int nMaxHP;
	oAreaObject = GetFirstObjectInArea(GetArea(GetFirstPC()), 1);
	while (GetIsObjectValid(oAreaObject)) {
		nMaxHP = GetMaxHitPoints(oAreaObject);
		nMaxHP = ((nMaxHP - (nMaxHP / 4)) - GetCurrentHitPoints(oAreaObject));
		if ((nMaxHP > 0)) {
			efHeal = EffectHeal(nMaxHP);
			ApplyEffectToObject(0, efHeal, oAreaObject, 0.0);
		}
		oAreaObject = GetNextObjectInArea(GetArea(GetFirstPC()), 1);
	}
}

