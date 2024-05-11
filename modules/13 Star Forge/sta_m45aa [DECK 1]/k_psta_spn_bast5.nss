void main() {
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oNearestBastila = GetNearestObjectByTag("Bastila", OBJECT_SELF, 1);
	if (((!GetIsObjectValid(oNearestSta_bastila)) && (!GetIsObjectValid(oNearestBastila)))) {
		object oSTA45A_WAY_45D = GetObjectByTag("STA45A_WAY_45D", 0);
		location location1 = GetLocation(oSTA45A_WAY_45D);
		CreateObject(1, "sta_bastila", location1, 0);
	}
}
