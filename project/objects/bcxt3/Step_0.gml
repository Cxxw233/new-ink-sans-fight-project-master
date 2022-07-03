if audio_is_playing(inkbgmp3)
{
    if instance_exists(butxt3bottles)&&butxt3bottles.amgc = 0
    {
        switch instance_number(butxt3bottles)
        {
            case 8:
                audio_sound_pitch(inkbgmp3, 1)
                break
            case 7:
                audio_sound_pitch(inkbgmp3, 0.95)
                break
            case 6:
                audio_sound_pitch(inkbgmp3, 0.9)
                break
            case 5:
                audio_sound_pitch(inkbgmp3, 0.85)
                break
            case 4:
                audio_sound_pitch(inkbgmp3, 0.8)
                break
            case 3:
                audio_sound_pitch(inkbgmp3, 0.75)
                break
            case 2:
                audio_sound_pitch(inkbgmp3, 0.7)
                break
            case 1:
                audio_sound_pitch(inkbgmp3, 0.65)
                break
        }

    }
    else
        instance_destroy()
}
