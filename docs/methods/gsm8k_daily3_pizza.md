# 4人のピザの未食部分を求める

各4切れのピザを4人が買い、2人は50%、2人は75%食べた。残りは何切れか。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- AnnとCateについて原文のthe pizzasは各自のピザを指すと読む。4切れなので50%・75%とも整数切れになる。

## pizza_total：全切れ数

条件：4人が各4切れのピザを持つ。

根拠：

得られること：全部で16切れ。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.pizza_total`。

## pizza_bill_dale：BillとDale

条件：2人が各4切れの50%を食べる。

根拠：

得られること：2×4×1/2=4切れ。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.pizza_bill_dale`。

## pizza_ann_cate：AnnとCate

条件：2人が各4切れの75%を食べる。

根拠：

得られること：2×4×3/4=6切れ。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.pizza_ann_cate`。

## pizza_eaten：食べた合計

条件：2組は別の人のピザ。

根拠：

得られること：4+6=10切れ。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.pizza_eaten`。

## pizza_uneaten：未食部分

条件：全16切れから食べた10切れを引く。

根拠：

得られること：6切れ残る。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.pizza_uneaten`。

## pizza_exists：条件の充足

条件：全16、各組4・6、食べた10、残り6。

根拠：

得られること：全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.pizza_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.pizza_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
