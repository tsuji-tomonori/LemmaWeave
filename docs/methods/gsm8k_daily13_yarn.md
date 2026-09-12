# 3つの糸玉に使う糸の長さ

第1の糸玉は第2の半分、第3は第1の3倍で27フィートである。第2に使った長さを求める。

**取得済み固定GSM8Kの1問。**

- 糸玉の大きさを使用した糸の長さに比例する量として扱う。

## yarn_first：第1の長さ

条件：第3は第1の3倍で27フィート。

根拠：

得られること：第1は27÷3=9フィート。

既習の根拠：倍から元の量を求める除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.yarn_first`。

## yarn_second：第2の長さ

条件：第1は第2の半分で、第1は9フィート。

根拠：

得られること：第2は2×9=18フィート。

既習の根拠：半分の関係を2倍に戻す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.yarn_second`。

## yarn_exists：条件の充足

条件：第1を9、第2を18、第3を27と置く。

根拠：

得られること：すべての倍率条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.yarn_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.yarn_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
