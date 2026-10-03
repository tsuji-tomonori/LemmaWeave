# パイナップルリングの利益

パイナップル6個の原価とリング販売の利益を、原文どおりの読みと参考解答の追加条件に分ける。

**取得済み固定GSM8Kの1問。**

- 4 rings for $5 eachは通常、4個を各5ドルで売った意味。参考解答は4個組を5ドルで全量販売した別条件。

## pineapple_cost_and_rings：原価と製造数

条件：6個を各3ドルで買い、各12リングに切る。

根拠：

得られること：原価18ドル、72リング。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.pineapple_cost_and_rings`。

## pineapple_literal_profit：原文どおりの利益

条件：4リングだけを各5ドルで売る。

根拠：

得られること：売上20ドル、利益2ドル。

既習の根拠：売上−原価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.pineapple_literal_profit`。

## pineapple_bundle_profit：参考解答の追加条件

条件：4個組を5ドルで全72個売ると追加仮定する。

根拠：

得られること：18組、売上90ドル、利益72ドル。

既習の根拠：等分、単価×数量、差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.pineapple_bundle_profit`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.pineapple_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
