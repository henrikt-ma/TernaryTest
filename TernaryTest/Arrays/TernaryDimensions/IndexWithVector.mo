within TernaryTest.Arrays.TernaryDimensions;

model IndexWithVector
  extends Icons.Example;
  Boolean[__Wolfram_Ternary] b;
  Boolean[2] y = b[{false, true}];
equation
  for i loop
    b[i] = i > (time > 5.0);
  end for;
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end IndexWithVector;
