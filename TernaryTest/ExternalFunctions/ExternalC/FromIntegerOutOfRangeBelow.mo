within TernaryTest.ExternalFunctions.ExternalC;

model FromIntegerOutOfRangeBelow
  extends Icons.NegativeExample;
  Integer i(start = 3, fixed = true);
  __Wolfram_Ternary t = Utilities.fromInteger(i);
equation
  when sample(0.5, 2.0) then
    i = pre(i) - 1;
  end when;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = false), preferredView = "text");
end FromIntegerOutOfRangeBelow;
