# 支出・貯金後に財布から失った金額を求める

28ドルの7分の1を使い、残りの半分を貯金し、財布に残した金から1ドル以外を失った額を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 貯金した半分を除いた残りの半分が財布にあり、そのうち1ドルだけ無事だったと読む。

## wallet_milkshake：ミルクシェイク代

条件：28ドルの7分の1を使う。

根拠：

得られること：28÷7=4ドル。

既習の根拠：中学校までの分数と除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.wallet_milkshake`。

## wallet_after：支出後の残額

条件：28ドルから4ドルを引く。

根拠：

得られること：24ドル残る。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.wallet_after`。

## wallet_amount：財布の金額

条件：24ドルの半分を貯金し、残りを財布に入れる。

根拠：

得られること：財布には12ドル。

既習の根拠：中学校までの分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.wallet_amount`。

## wallet_lost：失った金額

条件：財布の12ドルのうち1ドルだけ残る。

根拠：

得られること：12-1=11ドルを失う。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.wallet_lost`。

## wallet_exists：条件の充足

条件：4、24、12、11ドルを各段階へ置く。

根拠：

得られること：支出、貯金、損失の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.wallet_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.wallet_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
