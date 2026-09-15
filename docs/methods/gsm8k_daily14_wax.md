# 動物彫刻に使う蝋

小型彫刻に使った12本と個数比から大型分を求め、全使用量を出す。

**取得済み固定GSM8Kの1問。**

- 小型は1体2本、大型は1体4本、小型個数は大型の3倍。

## wax_small_count：小型の個数

条件：小型1体に2本、合計12本を使った。

根拠：

得られること：小型は12÷2=6体。

既習の根拠：総量を1体分で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.wax_small_count`。

## wax_large_count：大型の個数

条件：小型6体は大型の3倍。

根拠：

得られること：大型は6÷3=2体。

既習の根拠：倍関係の逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.wax_large_count`。

## wax_large_used：大型に使った蝋

条件：大型2体、1体4本。

根拠：

得られること：大型分は2×4=8本。

既習の根拠：個数と単位量の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.wax_large_used`。

## wax_total：全使用量

条件：小型に12本、大型に8本。

根拠：

得られること：全部で12+8=20本。

既習の根拠：排反な用途別量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.wax_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.wax_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
