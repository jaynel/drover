%%%------------------------------------------------------------------------------
%%% @copyright (c) 2015, DuoMark International, Inc.
%%% @author Jay Nelson <jay@duomark.com> [http://duomark.com/]
%%% @reference 2015 Development sponsored by TigerText, Inc. [http://tigertext.com/]
%%% @reference The license is based on the template for Modified BSD from
%%%   <a href="http://opensource.org/licenses/BSD-3-Clause">OSI</a>
%%% @doc
%%%   Drover main application, just used for testing from the command line.
%%%   Drover is intended to be used as an included_application.
%%%
%%% @since 0.0.1
%%% @end
%%%------------------------------------------------------------------------------
-module(drover_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	drover_sup:start_link().

stop(_State) ->
	ok.
