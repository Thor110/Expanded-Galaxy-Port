#include "k_inc_dan"
void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 10:
        {
           // PlotLeave("dan14aa_wp_elise",1,6,TRUE);
            ActionForceMoveToObject(GetObjectByTag("dan14aa_wp_elise6"),FALSE,1.0,60.0f);
            ActionDoCommand(DestroyObject(OBJECT_SELF));
            SetCommandable(FALSE);
        }

        break;
        case 20:
        {
            //PlotLeave("dan14aa_wp_elise",7,7,TRUE);
            ActionForceMoveToObject(GetObjectByTag("dan14aa_wp_elise7"),TRUE,1.0,10.0f);
            ActionDoCommand(DestroyObject(OBJECT_SELF));
            SetCommandable(FALSE);
        }
        break;
        case 30:
        {
            NoClicksFor(0.7);
            DelayCommand(0.5,ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
        }
        break;
        case 100:
        {
            ActionMoveToObject(GetObjectByTag("k_exit"),FALSE);
            ActionDoCommand(DestroyObject(OBJECT_SELF));
            SetCommandable(FALSE);
        }

    }
}

