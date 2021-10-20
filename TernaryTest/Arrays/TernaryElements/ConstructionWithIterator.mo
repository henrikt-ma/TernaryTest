within TernaryTest.Arrays.TernaryElements;

model ConstructionWithIterator
  extends Icons.Example;
  __Wolfram_Ternary[:] t = array(if 3 <= i and i <= 5 then __Wolfram_unknown else i > 4 and time > 5 for i in (-2):6);
  annotation(TestCase(shoudPass = true), preferredView = text);
end ConstructionWithIterator;
