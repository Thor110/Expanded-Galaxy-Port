void main()
{
    SetGlobalBoolean("MAN_HAS_CHUM",TRUE);
    CreateItemOnObject("man28_chum",GetLastUsedBy());
    DestroyObject(OBJECT_SELF);

}
