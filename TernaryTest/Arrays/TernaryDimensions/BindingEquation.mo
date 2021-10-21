within TernaryTest.Arrays.TernaryDimensions;

model BindingEquation
  extends Icons.Example;
  Real[__Wolfram_Ternary] x = {1.0, time, 2.0};
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = true), preferredView = text);
end BindingEquation;
