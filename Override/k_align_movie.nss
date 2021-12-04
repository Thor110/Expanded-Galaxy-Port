// k_align_movie
// DJS-OEI 6/11/2004
// This script is called by CSWGuiStatusSummary::HandleInputEvent().
// It is used to fire a movie when the player's alignment reaches
// certain milestones, but only after the player has seen the
// alignment modification notification interface. This script is
// just here to make tweaking easier.

// BMA-OEI 10/18/2004 prevent movie from firing until after
// player has left telos and visited another planet
/*int PlanetCount()
{
    int i = 0;
    if( GetGlobalBoolean("201_First_Enter") )
        i++;
    if( GetGlobalBoolean("301_First_Enter") )
        i++;
    if( GetGlobalBoolean("401_First_Enter") )
        i++;
    if( GetGlobalBoolean("501_First_Enter") )
        i++;
    if( GetGlobalBoolean("601_First_Enter") )
        i++;
    if( GetGlobalBoolean("701_First_Enter") )
        i++;
    return i;
}*/

void DoVisasEncounter()
{
    //if ((GetGlobalNumber("262TEL_Escape_Telos") == 1) && (PlanetCount() >= 2))
    //{
        //AurPostString("k_align_movie: Align met, 262EscapeTelos = 1, PlanetCount() > 1", 5, 5, 5.0)
        //PlayMovie( "ScnMov01" );
        //QueueMovie( "NarMov04" );
        //QueueMovie( "ScnMov01" );
        //PlayMovieQueue();
        //SetGlobalNumber( "000_Event_Movie", 1 );
        //SetGlobalBoolean( "003EBO_VISAS_ARRIVES", TRUE);
        // This sets the Sith Lord to show on the Main Menu.
        if( GetGlobalNumber( "GBL_GAME_COMPLETE" ) > 2 )
        {
            SetGlobalNumber( "GBL_MAIN_SITH_LORD", 5 );
        }
        else
        {
            SetGlobalNumber( "GBL_MAIN_SITH_LORD", 2 );
        }
    //}
}

void main()
{
    // Only play the Visas Marr/Nihilus movie if it hasn't been
    // done before.
    /*if( GetGlobalNumber( "000_Event_Movie" ) == 0 )
    {
        // If the player's alignment is either 25 (Dark) or
        // 75 (Light), or they have gained at least 50 points
        // in both directions, play the Visas Marr/Nihilus movie.
        int nDarkPoints = GetGlobalNumber( "G_PC_Dark_Total" );
        int nLightPoints = GetGlobalNumber( "G_PC_Light_Total" );
        int nPCAlign = GetGlobalNumber( "G_PC_Align_Val" );

        //this is the 'backup condition for detecting visas
        int bThreeJediFound = FALSE;
        if(GetGlobalNumber("000_Jedi_Found") >= 3)
            bThreeJediFound = TRUE;

        // If the player (or any party member) is in combat,
        // don't play the movie. There is some sort of resource
        // lock infinite loop with Bink if the movie tries to
        // play as combat is in process. FMP Bug 8097.
        int bAllowPlayback = TRUE;
        int nCounter;
        for( nCounter = 0; nCounter < 3; nCounter++ ) {
            object oPM = GetPartyMemberByIndex( nCounter );
            if( GetIsInCombat( oPM ) )
            {
                bAllowPlayback = FALSE;
                // DJS-OEI 11/1/2004
                // This break is commented out because it was trashing the stack,
                // destroying the nPCAlign integer we just grabbed (and potentially
                // some others).
                // break;
            }
        }

        if( bAllowPlayback &&
          ( ( nPCAlign >= 75 ) ||
            ( nPCAlign <= 25 ) ||
            ( nDarkPoints + nLightPoints >= 50 ) ) )
        {
            //DoVisasEncounter();
        }
        else if(bThreeJediFound)
        {
            //DoVisasEncounter();
        }
        else
        {
        }
    }
    else if(0) {
        // If a second movie is to be played at another
        // milestone, add it here.
    }*/
}
