#include "k_inc_man"
void main()
{
    if(GetManaanMainPlotVariable() >= PLOT_HARVEST_STOPPED &&
       GetManaanStarMapFound() == FALSE)
    {
        ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE);
    }
    else
    {
        RemoveSuits();
        SetGlobalBoolean("MAN_SHORTCUT",TRUE);
        StartNewModule("manm28aa","man28aa_wp_from28ad");
    }
}
