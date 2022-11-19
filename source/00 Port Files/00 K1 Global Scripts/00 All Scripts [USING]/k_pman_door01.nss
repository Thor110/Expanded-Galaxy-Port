void main()
{
    object oDoor = GetObjectByTag("man28aa_door02");
    if(GetIsObjectValid(oDoor))
    {
        SetLocked(oDoor,FALSE);
        AssignCommand(oDoor,ActionOpenDoor(oDoor));
    }
}
