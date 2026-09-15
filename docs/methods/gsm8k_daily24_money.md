# 支出と紛失後の残金

5000ドルから2800ドルを支払い、残りの半分を支払い、さらにその残りの4分の1を失った後の残金を求める。

**取得済み固定GSM8Kの1問。**

- 割合を適用する時点を順番どおりに固定する。

## money_after_bike：バイク購入後

条件：5000ドルから2800ドルを支払う。

根拠：

得られること：2200ドル残る。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.money_after_bike`。

## money_after_ticket：チケット購入後

条件：2200ドルの半分をチケットに使う。

根拠：

得られること：残りも半分の1100ドル。

既習の根拠：半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.money_after_ticket`。

## money_lost：失った額

条件：1100ドルの4分の1を失う。

根拠：

得られること：失う額は275ドル。

既習の根拠：4等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.money_lost`。

## money_remaining：最終残金

条件：1100ドルから275ドルを失う。

根拠：

得られること：825ドル残る。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.money_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.money_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
