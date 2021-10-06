within TernaryTest.Arrays.TernaryDimensions;

model BindingEquation
  extends Icons.Example;
  Real[__Wolfram_Ternary] x = {1.0, time, 2.0};
  annotation(TestCase(shoudPass = true), preferredView = text);
end BindingEquation;
