# 3年後の玩具の車

16台から毎年50%増える玩具の車が3年後に何台になるか求める。

**取得済み固定GSM8Kの1問。**

- 毎年の50%増を前年の150%とし、各年の新しい総数へ順次適用する。

## cars_year1：1年後

条件：初期16台を50%増、すなわち150%にする。

根拠：

得られること：1年後は16×150/100=24台。

既習の根拠：百分率による増加。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.cars_year1`。

## cars_year2：2年後

条件：1年後の24台をさらに50%増にする。

根拠：

得られること：2年後は24×150/100=36台。

既習の根拠：前年の総数を基準にする複利的増加。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.cars_year2`。

## cars_year3：3年後

条件：2年後の36台をさらに50%増にする。

根拠：

得られること：答えは36×150/100=54台。

既習の根拠：前年の総数を基準にする複利的増加。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.cars_year3`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.cars_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
