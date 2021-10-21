within TernaryTest.ConstantEvaluation;

model NoConversionToBoolean
  extends Icons.NegativeExample;
  constant Boolean b = __Wolfram_Ternary(false);
  annotation(experiment(StopTime = 10.0), TestCase(shoudPass = false), preferredView = text);
end NoConversionToBoolean;
