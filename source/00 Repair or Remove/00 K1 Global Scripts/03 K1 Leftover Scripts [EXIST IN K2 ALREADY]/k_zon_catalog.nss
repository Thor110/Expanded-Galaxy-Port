//:: k_zon_catalog
/*
     Catalogs all creatures within
     the trigger area and marks
     them with an integer which
     is part of the creature's
     tag.
     Use local number SW_NUMBER_LAST_COMBO
     as a test. A new local number will
     be defined if the system works.

*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_zone"


void main()
{
    ZN_CatalogFollowers();
}

