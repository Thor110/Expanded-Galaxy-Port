void main()
{
    if(GetInventoryDisturbType() == INVENTORY_DISTURB_TYPE_REMOVED)
    {
        DestroyObject(OBJECT_SELF);
    }
}
