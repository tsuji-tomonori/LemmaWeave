# 目標達成条件の有無で小動物由来の増量を分ける

必要増量1000ポンドの5分の1をベリー、その2倍をドングリ、残り必要量の半分をサケで得たとき、小動物分を求める。

**取得済み固定GSM8Kの1問。目標達成の不足条件を隠さない。**

- 4種類だけで1000ポンドをちょうど達成した追加条件では小動物分200ポンド。達成したとの明記がなければ小動物分は拘束されない。

## bear_berries：ベリー分

条件：必要な1000ポンドの5分の1。

根拠：

得られること：200ポンド。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.bear_berries`。

## bear_acorns：ドングリ分

条件：ベリー分の2倍。

根拠：

得られること：400ポンド。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.bear_acorns`。

## bear_remaining：サケ前の必要残量

条件：1000から200と400を引く。

根拠：

得られること：400ポンド。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.bear_remaining`。

## bear_salmon：サケ分

条件：残る必要量400の半分。

根拠：

得られること：200ポンド。

既習の根拠：中学校までの分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.bear_salmon`。

## bear_small_if_goal：目標達成時の小動物分

条件：4種類の合計で1000ポンドをちょうど達成する。

根拠：

得られること：1000-200-400-200=200ポンド。

既習の根拠：保存式と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.bear_small_if_goal`。

## bear_examples：不足条件の反例

条件：目標達成を仮定しない明記済み3種類の条件では小動物分0も許される。

根拠：

得られること：0と200が可能なので原文だけでは一意でない。

既習の根拠：反例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.bear_examples`。

## bear_exists：条件付き解の充足

条件：200、400、400、200、200ポンドと置く。

根拠：

得られること：明記条件と目標達成条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.bear_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.bear_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
