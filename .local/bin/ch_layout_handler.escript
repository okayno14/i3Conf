#!/usr/bin/escript

main(_) ->
    io:setopts([{encoding, unicode}]),
    Layout = change_layout(),
    print_layout(Layout),
    0.

%%--------------------------------------------------------------------
%% @doc
%% @end
-spec change_layout() ->
    Layout :: nonempty_string().
%%--------------------------------------------------------------------
change_layout() ->
    Status = os:cmd("xkb-switch"),
    Layout = string:trim(Status, both, "\n"),
    change_layout(Layout).
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% @doc
%% @end
-spec change_layout(Layout :: nonempty_string()) ->
    NLayout :: nonempty_string().
%%--------------------------------------------------------------------
change_layout("us") ->
    Layout = "ru",
    process_layout(Layout),
    Layout;

change_layout("ru") ->
    Layout = "us",
    process_layout(Layout),
    Layout.
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% @doc
%% @end
-spec process_layout(Layout :: nonempty_string()) ->
    ok.
%%--------------------------------------------------------------------
process_layout(Layout) ->
    exec_change_layout(Layout).
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% @doc
%% @end
-spec exec_change_layout(Layout :: nonempty_string()) ->
    ok.
%%--------------------------------------------------------------------
exec_change_layout(Layout) ->
    ChangeLayoutCMD = make_change_layout_cmd(Layout),
    os:cmd(ChangeLayoutCMD).
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% @doc
%% @end
-spec print_layout(Layout :: nonempty_string()) ->
    ok.
%%--------------------------------------------------------------------
print_layout(Layout) ->
    io:format("~ts~n", [map_layout_to_emoji(Layout)]).
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% @doc
%% @end
-spec make_change_layout_cmd(Layout :: nonempty_string()) ->
    CMD :: nonempty_string().
%%--------------------------------------------------------------------
make_change_layout_cmd(Layout) ->
   io_lib:format("setxkbmap -layout ~p", [Layout]).
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% @doc
%% @end
-spec map_layout_to_emoji(Layout :: nonempty_string()) ->
    Emoji :: nonempty_string().
%%--------------------------------------------------------------------
map_layout_to_emoji("ru") ->
    "🇷🇺";

map_layout_to_emoji("us") ->
    "🇺🇸".
%%--------------------------------------------------------------------

