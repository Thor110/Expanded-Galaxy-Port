void main() {
	object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
	object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
	object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
	object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
	object oSta_way_sithjed2 = GetObjectByTag("sta_way_sithjed2", 0);
	object oSta_way_sithjed3 = GetObjectByTag("sta_way_sithjed3", 0);
	object oSta_way_sithjed4 = GetObjectByTag("sta_way_sithjed4", 0);
	object oSta_way_sithjedi = GetObjectByTag("sta_way_sithjedi", 0);
	AssignCommand(oSta45a_Sith01, JumpToObject(oSta_way_sithjedi, 1));
	AssignCommand(oSta45a_Sith02, JumpToObject(oSta_way_sithjed2, 1));
	AssignCommand(oSta45a_Sith03, JumpToObject(oSta_way_sithjed3, 1));
	AssignCommand(oSta45a_Sith04, JumpToObject(oSta_way_sithjed4, 1));
}

