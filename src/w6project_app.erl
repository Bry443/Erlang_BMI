-module(w6project_app).
-export([get_data/0]).

    get_data() ->
        io:format("Enter your weight in lb: "),
        {ok, [Pounds]} = io:fread("~d", []),
        io:format("Enter your height in inches: "),
        {ok, [Inches]} = io:fread("~d", []),
        Result = (Pounds / (Inches * Inches)) * 703,
        io:format("Result: ~w~n", [Result]).