//10-causes selkath apprentice to move through the previously locked door man27aa_door05
#include "k_inc_man"
void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 10:
        {
            object oDoor = GetObjectByTag("man27aa_door05");
            SetLocked(oDoor,FALSE);
            ActionOpenDoor(oDoor);
            ActionMoveToObject(GetObjectByTag("man27aa_wp_seljed5"));
            ActionDoCommand(ChangeToStandardFaction(OBJECT_SELF,STANDARD_FACTION_HOSTILE_1));
            ActionDoCommand(SetCommandable(TRUE));
            ActionDoCommand(ExecuteScript("k_ai_master",OBJECT_SELF,3001));
            SetCommandable(FALSE);
        }

        break;
    }
}

