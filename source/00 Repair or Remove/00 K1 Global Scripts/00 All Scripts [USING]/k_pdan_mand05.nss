void main()
{
    GiveGoldToCreature(GetPCSpeaker(), 1000);
    CreateItemOnObject("g_i_upgrade010", GetPCSpeaker());
    CreateItemOnObject("g_i_gauntlet006", GetPCSpeaker());
    SetGlobalNumber("DAN_JON_STATE", 3);
}
