# 市場での買い物後の残金

バナナ2袋と他3品の代金を合計し、持参した55ユーロから差し引く。

**取得済み固定GSM8Kの1問。**

- バナナは1袋4ユーロのものを2袋買い、他の価格は各品目の合計額と読む。

## market_spent：支出合計

条件：バナナ2袋×4ユーロ、梨2、アスパラガス6、鶏肉11ユーロ。

根拠：

得られること：支出は8+2+6+11=27ユーロ。

既習の根拠：同一品の数量×単価と各品目の加算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.market_spent`。

## market_left：残金

条件：持参金55ユーロから27ユーロを支払う。

根拠：

得られること：残金は28ユーロ。

既習の根拠：所持金=支出+残金を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.market_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.market_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
