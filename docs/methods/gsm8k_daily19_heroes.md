# times olderの解釈別年齢

Thor、Captain America、Peter Parkerの倍率関係とIronmanの年齢差からIronmanの年齢を求める。

**取得済み固定GSM8Kの1問。曖昧表現を解釈別に解答。**

- ベンチマーク慣行の倍年齢なら48歳、olderを差として読むなら45歳。

## heroes_mul_captain：慣行解釈のCaptain

条件：ThorをCaptainの13倍の年齢と読む。

根拠：

得られること：Captainは112歳。

既習の根拠：倍数関係の一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.heroes_mul_captain`。

## heroes_mul_peter：慣行解釈のPeter

条件：CaptainをPeterの7倍の年齢と読む。

根拠：

得られること：Peterは16歳。

既習の根拠：倍数関係の一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.heroes_mul_peter`。

## heroes_mul_ironman：慣行解釈のIronman

条件：IronmanはPeterより32歳上。

根拠：

得られること：ベンチマーク慣行では48歳。

既習の根拠：年齢差の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.heroes_mul_ironman`。

## heroes_literal_captain：逐語解釈のCaptain

条件：13 times olderを元の13倍だけ年上、すなわち14倍の年齢と読む。

根拠：

得られること：Captainは104歳。

既習の根拠：倍数関係の一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.heroes_literal_captain`。

## heroes_literal_peter：逐語解釈のPeter

条件：7 times olderも8倍の年齢と読む。

根拠：

得られること：Peterは13歳。

既習の根拠：倍数関係の一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.heroes_literal_peter`。

## heroes_literal_ironman：逐語解釈のIronman

条件：IronmanはPeterより32歳上。

根拠：

得られること：逐語解釈では45歳。

既習の根拠：年齢差の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.heroes_literal_ironman`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.heroes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
