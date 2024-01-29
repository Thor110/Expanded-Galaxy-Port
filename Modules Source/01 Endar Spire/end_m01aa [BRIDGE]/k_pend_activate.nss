void main() {
	object object1 = GetItemActivator();
	string string1 = GetTag(GetItemActivated());
	if (((IsObjectPartyMember(object1) && ((string1 == "G_I_MEDEQPMNT02") || (string1 == "g_i_medeqpmnt01"))) && (GetGlobalNumber("END_TRASK_DLG") == 15))) {
		SetGlobalNumber("END_TRASK_DLG", -1);
	}
}

