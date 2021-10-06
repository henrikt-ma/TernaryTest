within TernaryTest.ConstantEvaluation;

model NoConversionFromInteger
  extends Icons.NegativeExample;
  constant __Wolfram_Ternary u = __Wolfram_Ternary(0);
  annotation(TestCase(shoudPass = false), preferredView = text);
end NoConversionFromInteger;
