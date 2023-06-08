within TernaryTest.Arrays.TernaryElements;

model BindingEquation
  extends Icons.Example;
  __Wolfram_Ternary[2] z = {__Wolfram_unknown, __Wolfram_Ternary(time < 5)};
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end BindingEquation;
