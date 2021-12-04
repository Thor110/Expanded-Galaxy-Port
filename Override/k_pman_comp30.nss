void main()
{
    object oDoor = GetObjectByTag("man28ac_force01");
    SetLocked(oDoor,FALSE);
    AssignCommand(oDoor,ActionOpenDoor(oDoor));
    SetGlobalBoolean("MAN_PRESS_ON",FALSE);
    SetGlobalNumber("MAN_LIVEB_STATE",3);
}
