///Create haptic feedback

if global.vibrate_on == 1
{
    immersion_stop();
    immersion_play_effect(0);
}
