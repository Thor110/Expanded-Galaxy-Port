void main()
{
    object oEnter = GetEnteringObject();
    if(GetTag(oEnter) == "man28_sur2")
    {
        object oShark = GetNearestObjectByTag("man28_firixa");
        object oWP = GetNearestObjectByTag("POST_man28_firixa");
        AssignCommand(oShark,ActionAttack(oEnter));
        AssignCommand(oShark,ActionMoveToObject(oWP,TRUE));
    }
}
