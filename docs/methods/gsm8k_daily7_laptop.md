# 頭金と4か月分支払後の残高を求める

1000ドルのPCに20%の頭金より20ドル多く払い、月65ドルを4か月払った残高を求める。

**取得済み固定GSM8Kの1問。**

- 追加20ドルは必須頭金への上乗せ。

## laptop_required_down：必須頭金

条件：1000ドルの20%。

根拠：

得られること：200ドル。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.laptop_required_down`。

## laptop_actual_down：実際の頭金

条件：必須200ドルに20ドルを追加。

根拠：

得られること：220ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.laptop_actual_down`。

## laptop_four_payments：4か月の支払

条件：月65ドルを4回払う。

根拠：

得られること：260ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.laptop_four_payments`。

## laptop_balance：残高

条件：1000ドルから頭金220ドルと260ドルを引く。

根拠：

得られること：520ドル。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.laptop_balance`。

## laptop_exists：条件の充足

条件：200、220、260、520ドルを置く。

根拠：

得られること：全支払条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.laptop_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.laptop_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
