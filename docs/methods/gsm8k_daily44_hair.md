# 散髪回数の目標達成率

8回散髪済みで目標まであと2回のとき、目標に対する達成率を求める。

**取得済み固定GSM8Kの1問。**

- 目標回数は完了8回と残り2回の合計であり、達成率は完了回数÷目標回数×100とする。

## hair_goal：目標回数

条件：散髪済み8回、目標まで残り2回。

根拠：

得られること：目標は8+2=10回。

既習の根拠：完了分と残り分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.hair_goal`。

## hair_percent：達成率

条件：10回中8回を完了している。

根拠：

得られること：8÷10×100=80%達成している。

既習の根拠：割合は部分÷全体×100で求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.hair_percent`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.hair_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
