void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oEntering = GetEnteringObject();
	if ((((oEntering == oNPC) || (oEntering == object3)) || (oEntering == object5))) {
		object oK37_plc_obelisk = GetObjectByTag("k37_plc_obelisk", 0);
		SetPlotFlag(oK37_plc_obelisk, 0);
	}
}

