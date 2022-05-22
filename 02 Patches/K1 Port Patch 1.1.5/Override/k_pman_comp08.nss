void main()
{
    int nNth = 1;
    object oDroid = GetNearestObjectByTag("man28_turret02",OBJECT_SELF, nNth);

    while(GetIsObjectValid(oDroid))
    {

        ChangeToStandardFaction(oDroid,STANDARD_FACTION_HOSTILE_1) ;
        AssignCommand(oDroid,ActionAttack(GetFirstPC()));
        nNth++;
        oDroid = GetNearestObjectByTag("man28_turret02",OBJECT_SELF, nNth);

    }
}
