# 釣銭の5セント硬貨

7ドルからパン4.20ドルとチーズ2.05ドルを買い、25セント硬貨1枚、10セント硬貨1枚と5セント硬貨で釣銭を受け取るとき、5セント硬貨の枚数を求める。

**取得済み固定GSM8Kの1問。**

- 金額をセントへ統一する。

## change_amount：釣銭総額

条件：支払額700セントから420セントと205セントを支払う。

根拠：

得られること：釣銭は75セント。

既習の根拠：同じ単位での差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.change_amount`。

## change_fixed_coins：固定硬貨分

条件：25セント硬貨と10セント硬貨を各1枚使う。

根拠：

得られること：固定分は35セント。

既習の根拠：硬貨価値の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.change_fixed_coins`。

## change_nickel_cents：5セント硬貨で払う額

条件：釣銭75セントのうち35セントを固定硬貨で渡す。

根拠：

得られること：残る40セントを5セント硬貨で渡す。

既習の根拠：部分量の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.change_nickel_cents`。

## change_nickels：硬貨枚数

条件：40セントを1枚5セントの硬貨だけで渡す。

根拠：

得られること：40÷5=8枚。

既習の根拠：総額=枚数×額面。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.change_nickels`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.change_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
