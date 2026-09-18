# 乗降を順に反映して空席数を求める

23行4席のバスで、初期乗客と二停留所の乗降後に残る空席数を求める。

**取得済み固定GSM8Kの1問。**

- 各停留所では乗車人数を加え、降車人数を引いた人数が次の状態になる。
- 自然数の切り捨てを避け、乗車前人数＋乗車人数＝乗車後人数＋降車人数で表す。

## bus_capacity：座席総数を求める

条件：23行あり各行に4席ある。

根拠：

得られること：座席総数は92席。

既習の根拠：行数×1行当たり席数を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.bus_capacity`。

## bus_first：第一停留所後の乗客数を求める

条件：初め16人、第一停留所で15人乗り3人降りる。

根拠：

得られること：第一停留所後は28人。

既習の根拠：乗降保存式として後人数＋3＝16＋15を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.bus_first`。

## bus_second：第二停留所後の乗客数を求める

条件：28人から17人乗り10人降りる。

根拠：

得られること：第二停留所後は35人。

既習の根拠：後人数＋10＝28＋17を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.bus_second`。

## bus_empty：空席数を求める

条件：全92席に35人が乗っている。

根拠：

得られること：空席は57席。

既習の根拠：座席総数＝乗客数＋空席数の自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.bus_empty`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.bus_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
