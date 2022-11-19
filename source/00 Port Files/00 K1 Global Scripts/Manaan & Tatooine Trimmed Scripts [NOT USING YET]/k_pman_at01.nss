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
        StartNewModule("manm28ac","from28d");
    }
}
