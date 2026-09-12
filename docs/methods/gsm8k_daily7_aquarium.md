# 水槽の容量と水量の変化を求める

4×6×3フィートの水槽を半分まで満たし、その水の半分をこぼした後、水量を3倍にしたときの水量を求める。

**取得済み固定GSM8Kの1問。**

- 体積を立方フィートで扱い、半分、さらに半分、3倍の順に変化させる。

## aquarium_capacity：水槽の容量

条件：直方体の辺が4、6、3フィート。

根拠：

得られること：容量は72立方フィート。

既習の根拠：直方体の体積は縦×横×高さ。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.aquarium_capacity`。

## aquarium_after_spill：こぼした後の水量

条件：72の半分を入れ、その水の半分をこぼす。

根拠：

得られること：18立方フィート残る。

既習の根拠：分数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.aquarium_after_spill`。

## aquarium_after_triple：3倍後の水量

条件：残った18立方フィートを3倍にする。

根拠：

得られること：54立方フィート。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.aquarium_after_triple`。

## aquarium_exists：条件の充足

条件：72、18、54立方フィートを置く。

根拠：

得られること：容量と水量変化の条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.aquarium_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.aquarium_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
