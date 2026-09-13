# 色分けされた格子の緑マス数を求める

10行15列の格子で中央24マスを赤、先頭2行と末尾2行を青にした残りの緑マスを求める。

**取得済み固定GSM8Kの1問。**

- 中央の赤4行は先頭・末尾各2行の青領域と重ならないという原文の配置を用いる。

## grid_total：格子全体を数える

条件：10行あり、各行に15マスある。

根拠：

得られること：全体は150マス。

既習の根拠：長方形配列の個数は行数×1行の個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.grid_total`。

## grid_colored：赤と青のマスを数える

条件：赤は中央4行の各6マス、青は先頭2行と末尾2行の全15マスで、両領域は重ならない。

根拠：

得られること：赤24マス、青4行60マス。

既習の根拠：互いに重ならない行ごとの積で数える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.grid_colored`。

## grid_green：残りを緑として求める

条件：すべてのマスは赤・青・緑のいずれか一色。

根拠：

得られること：緑は150-24-60=66マス。

既習の根拠：排反な部分の個数を全体から引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.grid_green`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.grid_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
