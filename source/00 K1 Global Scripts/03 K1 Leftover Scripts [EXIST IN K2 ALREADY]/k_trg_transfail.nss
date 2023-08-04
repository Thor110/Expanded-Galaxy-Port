/////////////////////////////////////////////////////////////////////////////
/*  k_trg_transfail
    This will begin a conversation between an invisible object that must be
    placed in all area transitions and the creature that failed to activate
    the transition*/
//////////////////////////////////////////////////////////////////////////////
void main()
{
    AssignCommand(GetNearestObjectByTag("k_trans_abort"),
                  ActionStartConversation(GetPartyMemberByIndex(0),
                                          "",
                                          FALSE,
                                          CONVERSATION_TYPE_CINEMATIC,
                                          TRUE,
                                          "",
                                          "",
                                          "",
                                          "",
                                          "",
                                          "",
                                          TRUE));
}
