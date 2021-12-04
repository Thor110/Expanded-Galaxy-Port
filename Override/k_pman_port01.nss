void main()
{
    if(GetGlobalBoolean("MAN_PORT_ZONE") == FALSE)
    {
        //SetLocked(OBJECT_SELF,FALSE);
        ActionOpenDoor(OBJECT_SELF);
    }
}
