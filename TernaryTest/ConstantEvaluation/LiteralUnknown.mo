within TernaryTest.ConstantEvaluation;

model LiteralUnknown
  extends Icons.Example;
  constant __Wolfram_Ternary x = __Wolfram_unknown;
equation
  assert(x == __Wolfram_unknown, "Wrong value of x.");
  annotation(TestCase(shoudPass = true), preferredView = text);
end LiteralUnknown;
