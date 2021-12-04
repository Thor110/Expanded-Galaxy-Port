void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 10:
        {
            ClearAllEffects();
            SetPlotFlag(OBJECT_SELF,FALSE);
        }

        break;
    }
}

