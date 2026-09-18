# 品目別代金を合計して均等割りする

5人がハンバーガー5個、フライ4組、ソーダ5杯、スパゲティ1皿を注文し、代金を均等に分ける。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- フライの1.20ドル、ソーダの0.5ドル、スパゲティの2.7ドルを有理数として正確に扱い、税や追加料金は導入しない。

## food_bill_burgers：ハンバーガー代

条件：5個を1個3ドルで買う。

根拠：

得られること：5×3=15ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.food_bill_burgers`。

## food_bill_fries：フライ代

条件：4組を1組1.20ドルで買う。

根拠：

得られること：4×1.20=4.80ドル。

既習の根拠：中学校までの小数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.food_bill_fries`。

## food_bill_soda：ソーダ代

条件：5杯を1杯0.5ドルで買う。

根拠：

得られること：5×0.5=2.5ドル。

既習の根拠：中学校までの小数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.food_bill_soda`。

## food_bill_total：請求総額

条件：3品目の代金にスパゲティ2.7ドルを加える。

根拠：

得られること：15+4.8+2.5+2.7=25ドル。

既習の根拠：中学校までの小数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.food_bill_total`。

## food_bill_each：1人分

条件：総額25ドルを5人で均等に分ける。

根拠：

得られること：1人25÷5=5ドル。

既習の根拠：中学校までの除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.food_bill_each`。

## food_bill_exists：条件の充足

条件：品目代15、4.8、2.5、総額25、1人5ドル。

根拠：

得られること：品目別計算と均等割りの条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.food_bill_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.food_bill_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
