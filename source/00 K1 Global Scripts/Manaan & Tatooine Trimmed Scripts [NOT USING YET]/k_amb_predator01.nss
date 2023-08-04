#include "k_inc_utility"

void CreatePredator(string sPredatorTemplate, object oPrey,location lStart);

void main()
{
    string sPreyStartWaypointTag = "wp_prey_start";
    string sPreyEndWaypointTag = "wp_prey_end";
    string sPreyTemplate = "k_prey";
    string sPredatorTemplate = "k_predator";

    if(UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF),SW_PLOT_BOOLEAN_09) == FALSE &&
       IsObjectPartyMember(GetEnteringObject()))
    {

        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF),SW_PLOT_BOOLEAN_09,TRUE);
        location lStart = GetLocation(GetNearestObjectByTag(sPreyStartWaypointTag));
        location lFinish = GetLocation(GetNearestObjectByTag(sPreyEndWaypointTag));
        object oPrey = CreateObject(OBJECT_TYPE_CREATURE,sPreyTemplate,lStart);
        AssignCommand(oPrey,ActionMoveToLocation(lFinish));
        DelayCommand(4.0,CreatePredator(sPredatorTemplate,oPrey,lStart));
    // AssignCommand(oPrey,ActionDoCommand(DestroyObject(oPrey)));
    }
}

void CreatePredator(string sPredatorTemplate, object oPrey,location lStart)
{
    object oPredator = CreateObject(OBJECT_TYPE_CREATURE,sPredatorTemplate,lStart);
    AssignCommand(oPredator,ActionAttack(oPrey));
    //AssignCommand(oPredator,ActionDoCommand(ChangeToStandardFaction(oPredator,STANDARD_FACTION_HOSTILE_1)));
}
