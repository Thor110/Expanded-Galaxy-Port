void main()
{
    SetGlobalBoolean("MAN_PRESS_ON",FALSE);
    SetGlobalNumber("MAN_LIVEB_STATE",2);
    SetGlobalBoolean("MAN_PTRAP_DONE",TRUE);
    object oDoor = GetObjectByTag("man28ac_force01");
    AssignCommand(oDoor,ActionOpenDoor(oDoor));
}

