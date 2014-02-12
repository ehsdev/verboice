-module(answer).
-export([run/1]).
-include("session.hrl").

run(Session = #session{pbx = Pbx, call_log = CallLog}) ->
  CallLog:info("Answer", [{command, "answer"}, {action, "start"}]),
  lager:info("Answer"),
  Pbx:answer(),
  {next, Session}.
