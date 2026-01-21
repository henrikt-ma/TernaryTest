within TernaryTest.ExternalFunctions.ExternalC;

model LocalArgument
  extends Icons.Example;
  Integer i(start = Utilities.localArg(false), fixed = true);
equation
  when time > 0.5 then
    i = Utilities.localArg(true);
  end when;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end LocalArgument;
