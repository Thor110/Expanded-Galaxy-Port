void main()
{
    CreateItemOnObject("W_SITHKEY", GetPCSpeaker(), 1);
    GiveGoldToCreature(GetPCSpeaker(), 10);
    SetGlobalBoolean("MAN_SITHS_DONE", TRUE);
}
