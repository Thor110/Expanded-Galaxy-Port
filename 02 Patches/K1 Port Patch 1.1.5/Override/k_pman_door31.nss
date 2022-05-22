void main()
{
    int nNth;
    object oDoor = GetObjectByTag("man28ac_door01",nNth);
    while(GetIsObjectValid(oDoor))
    {

        SetLocked(oDoor,FALSE);
        //AssignCommand(oDoor,ActionCloseDoor(oDoor));
        nNth++;
        oDoor = GetObjectByTag("man28ac_door01",nNth);
    }
}
