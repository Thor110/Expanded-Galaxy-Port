void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 20:
        {
            ChangeToStandardFaction(OBJECT_SELF,STANDARD_FACTION_HOSTILE_1);
            ClearAllActions();
            ActionAttack(GetPartyMemberByIndex(0));
        }

        break;
    }
}

