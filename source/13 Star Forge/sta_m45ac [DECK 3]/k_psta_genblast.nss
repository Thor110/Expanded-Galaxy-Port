void main() {
	object oPC = GetFirstPC();
	CreateItemOnObject("G_w_SonicPstl02", oPC, 1);
	SetGlobalBoolean("STA_GEN_BLASTER", 1);
}

