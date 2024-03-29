within TernaryTest.ExternalFunctions.ExternalC;

model OutputArrayOutOfRange
  extends Icons.NegativeExample;
  Integer i(start = 1, fixed = true);
  __Wolfram_Ternary[3] t = Utilities.fromIntegerArray(i);
equation
  when sample(0.5, 1.0) then
    i = pre(i) + 1;
  end when;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = false), preferredView = "text");
end OutputArrayOutOfRange;
