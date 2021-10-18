within TernaryTest.Applications.TrueFalseUndefined;

package TruthTables
  extends Icons.UtilitiesPackage;
  constant __Wolfram_Ternary[__Wolfram_Ternary] negation = {true, __Wolfram_unknown, false};
  constant __Wolfram_Ternary[__Wolfram_Ternary, __Wolfram_Ternary] conjunction = {{false, false, false}, {false, __Wolfram_unknown, true}, {false, true, true}};
  constant __Wolfram_Ternary[__Wolfram_Ternary, __Wolfram_Ternary] disjunction = {{false, false, true}, {false, __Wolfram_unknown, true}, {true, true, true}};
end TruthTables;
