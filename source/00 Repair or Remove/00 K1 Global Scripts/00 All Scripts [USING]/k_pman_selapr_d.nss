void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 20:
        {
            ActionForceMoveToObject(GetObjectByTag("man27_wp_selleave"),TRUE,1.0,5.0);
            ActionDoCommand(DestroyObject(OBJECT_SELF));
        }

        break;
    }
}

