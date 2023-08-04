void main()
{
    object oDoor = GetObjectByTag("dan13_door03");
    SetLocked(oDoor,FALSE);
    AssignCommand(oDoor,ActionOpenDoor(oDoor));
}
