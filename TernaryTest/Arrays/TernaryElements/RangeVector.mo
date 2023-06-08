within TernaryTest.Arrays.TernaryElements;

model RangeVector
  extends Icons.Example;
  constant __Wolfram_Ternary[:] c1 = __Wolfram_Ternary(false):__Wolfram_Ternary(true);
  constant __Wolfram_Ternary[:] c2 = false:__Wolfram_Ternary(true);
  constant __Wolfram_Ternary[:] c3 = __Wolfram_Ternary(false):true;
  __Wolfram_Ternary t = if time < 3 then false elseif time < 7 then __Wolfram_unknown else true;
  Integer k1 = size(t:__Wolfram_Ternary(true), 1);
  Integer k2 = size(t:true, 1);
  annotation(experiment(StopTime = 10.0), TestCase(shoulDpass = true), preferredView = "text");
end RangeVector;
