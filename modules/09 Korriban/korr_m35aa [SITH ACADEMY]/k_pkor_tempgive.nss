void main() {
	object object1 = GetLastUsedBy();
	object oK_pkor_itm_art01 = GetObjectByTag("k_pkor_itm_art01", 0);
	ActionGiveItem(oK_pkor_itm_art01, object1);
	CreateItemOnObject("k_pkor_itm_art01", object1, 1);
}

