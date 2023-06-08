within TernaryTest.Arrays.TernaryDimensions;

model IndexWithEnd
  extends Icons.Example;
  Boolean[__Wolfram_Ternary] b;
  Boolean x = b[end];
equation
  for i loop
    b[i] = i > (time > 5.0);
  end for;
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end IndexWithEnd;
