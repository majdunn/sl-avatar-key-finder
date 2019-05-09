default
{
    state_entry()
    {
       llSay(0, "Touch to find your Avatar UUID (key)");
       llSetText("Touch to find your Avatar UUID (key)", <1.0, 1.0, 1.0>, 1.0);
    }

    touch_start(integer total_number)
    {
        key avi = llDetectedKey(0);
        string name = llKey2Name(avi);
        llSay(0, "The UUID (key) for " + llKey2Name(avi) + " is : " + (string)avi);
        llGiveInventory(avi,llGetInventoryName(INVENTORY_LANDMARK, 0));
    }
}

// MIT LICENCE
// Copyright (c) 2014 MJ Dunn <mjdunnonline@gmail.com>
