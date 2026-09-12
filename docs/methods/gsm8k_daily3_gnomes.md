# 通り全体から5軒目の置物数を求める

5軒中最初の4軒に各3個、通り全体に20個ある。5軒目は何個か。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 各置物はいずれか1軒の庭にあり、重複計数しない。

## gnomes_first_four：最初の4軒

条件：4軒に各3個。

根拠：

得られること：4×3=12個。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.gnomes_first_four`。

## gnomes_fifth：5軒目

条件：全体20個から最初の4軒の12個を除く。

根拠：

得られること：20-12=8個。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.gnomes_fifth`。

## gnomes_exists：条件の充足

条件：最初の4軒12個、5軒目8個。

根拠：

得られること：合計20個になる。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.gnomes_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.gnomes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
