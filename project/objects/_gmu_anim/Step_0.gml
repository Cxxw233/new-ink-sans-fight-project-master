if (instance_exists(_inst) || _inst == -5)
{
    if (_delay <= 0)
    {
        _time += 1
        if (_time < _duration)
            event_user(0)
        else
        {
            if (_inst != -5)
                variable_instance_set(_inst, _var_name, (_start + _change))
            else
                variable_global_set(_var_name, (_start + _change))
            instance_destroy()
        }
    }
    else
        _delay -= 1
}
else
    instance_destroy()
