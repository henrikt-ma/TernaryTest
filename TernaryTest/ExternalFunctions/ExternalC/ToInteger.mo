within TernaryTest.ExternalFunctions.ExternalC;

model ToInteger
  extends Icons.Example;

  function next "Cycle between values of Ternary"
    input __Wolfram_Ternary x;
    output __Wolfram_Ternary y = if x == false then __Wolfram_unknown else x == __Wolfram_unknown;
  end next;

  __Wolfram_Ternary t(start = false, fixed = true);
  Integer i = Utilities.toInteger(t);
equation
  when sample(0.5, 1.0) then
    t = next(pre(t));
  end when;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end ToInteger;
