within TernaryTest.ExternalFunctions.ExternalC;

model FromInteger
  extends Icons.Example;
  Integer i(start = 1, fixed = true);
  __Wolfram_Ternary t = Utilities.fromInteger(i);
equation
  when sample(0.5, 1.0) then
    i = mod(pre(i), 3) + 1;
  end when;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end FromInteger;
