within TernaryTest.ExternalFunctions.ExternalC;

model OutputArray
  extends Icons.Example;
  Integer i(start = 0, fixed = true);
  __Wolfram_Ternary[3] t = Utilities.fromIntegerArray(i);
equation
  when sample(0.5, 1.0) then
    i = mod(pre(i) + 2, 3) - 1;
  end when;
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end OutputArray;
