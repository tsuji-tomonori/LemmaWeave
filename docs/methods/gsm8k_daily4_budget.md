# 靴とドレスの合計を2倍する

Saraの靴50ドルとドレス200ドルに対し、Rachelは合計の2倍を使う。予算を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- twice as much as what Sara spent on the pairを靴とドレスの合計の2倍と読む。

## budget_shoes：Saraの靴代

条件：Saraの靴は50ドル。

根拠：

得られること：靴代を50ドルと確定する。

既習の根拠：問題文の値の読取り。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.budget_shoes`。

## budget_dress：Saraのドレス代

条件：Saraのドレスは200ドル。

根拠：

得られること：ドレス代を200ドルと確定する。

既習の根拠：問題文の値の読取り。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.budget_dress`。

## budget_sara：Saraの合計

条件：靴50ドルとドレス200ドルを合計する。

根拠：

得られること：Saraの支出は250ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.budget_sara`。

## budget_rachel：Rachelの予算

条件：RachelはSaraの支出250ドルの2倍を使う。

根拠：

得られること：Rachelの予算は500ドル。

既習の根拠：中学校までの倍と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.budget_rachel`。

## budget_exists：条件の充足

条件：靴50、ドレス200、Sara合計250、Rachel合計500ドル。

根拠：

得られること：価格、合計、2倍の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.budget_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.budget_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
