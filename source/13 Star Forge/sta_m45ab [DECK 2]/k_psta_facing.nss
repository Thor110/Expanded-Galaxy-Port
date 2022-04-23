void main() {
	object oK_PSTA_FACING = GetObjectByTag("K_PSTA_FACING", 0);
	object oSta45b_malak = GetObjectByTag("sta45b_malak", 0);
	AssignCommand(oSta45b_malak, SetFacingPoint(GetPosition(oK_PSTA_FACING)));
}

