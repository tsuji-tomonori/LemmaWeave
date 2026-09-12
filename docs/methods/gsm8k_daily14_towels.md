# ビーチタオルの洗濯回数

12人が7日間に毎日1枚使うタオルを、1回14枚で洗う回数を求める。

**取得済み固定GSM8Kの1問。**

- 使った全タオルを各1回洗い、84枚は14枚ずつに割り切れる。

## towels_people：人数

条件：4人家族が3家族。

根拠：

得られること：人数は3×4=12人。

既習の根拠：同人数の集団数との積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.towels_people`。

## towels_total：タオル総数

条件：12人が7日間、毎日1枚ずつ使う。

根拠：

得られること：使用済みは12×7=84枚。

既習の根拠：1日量と日数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.towels_total`。

## towels_loads：洗濯回数

条件：84枚を1回14枚で過不足なく洗う。

根拠：

得られること：84÷14=6回。

既習の根拠：総数を1回容量で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.towels_loads`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.towels_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
