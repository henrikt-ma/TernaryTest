within TernaryTest.ExternalFunctions.ExternalC;

model Roundtrip
  extends Icons.Example;

  function roundTripInFunction
    input Integer x;
    output Integer y;
  protected
    __Wolfram_Ternary t = Utilities.fromInteger(x);
  algorithm
    y := Utilities.toInteger(t);
    annotation(Inline = false);
  end roundTripInFunction;

  Integer i(start = 0, fixed = true);
  __Wolfram_Ternary t = Utilities.fromInteger(i);
  Integer m = Utilities.toInteger(t);
  Integer n = roundTripInFunction(i);
equation
  when sample(0.5, 1.0) then
    i = mod(pre(i) + 2, 3) - 1;
  end when;
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end Roundtrip;
