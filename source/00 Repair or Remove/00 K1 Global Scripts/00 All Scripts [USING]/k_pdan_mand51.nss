#include "k_inc_man"
void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 1007:
        {
            int nState = GetGlobalNumber("DAN_MAND_STATE");
            if(nState > 1 && nState < 5)
           {
                CreateItemOnObject("g_mandat" + IntToString(nState - 1));
           }
            SetGlobalNumber("DAN_MAND_STATE",nState + 1);
            //AurPostString("Mandalorian Set To: " + IntToString(nState + 1),5,5,5.0);
            AddJournalQuestEntry("dan_raiders", 30);
        }

        break;
    }
    if(nEvent == HOSTILE_RETREAT)
    {
        UT_ReturnToBase();
    }
}

