void main() {
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oNearestBastila = GetNearestObjectByTag("Bastila", OBJECT_SELF, 1);
	if (((!GetIsObjectValid(oNearestSta_bastila)) && (!GetIsObjectValid(oNearestBastila)))) {
		object oSta_way_bastend = GetObjectByTag("sta_way_bastend", 0);
		location location1 = GetLocation(oSta_way_bastend);
		CreateObject(1, "sta_bastila", location1, 0);
	}
}
