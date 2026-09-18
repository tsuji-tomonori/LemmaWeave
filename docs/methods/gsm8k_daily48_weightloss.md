# 毎月1/8減量の二つの解釈

156ポンドから36ポンド増え、3か月間毎月体重の1/8を失ったとき年初との差を求める。

**取得済み固定GSM8Kの1問。**

- 『毎月体重の1/8』は基準体重を固定するか、その月の体重に掛けるかで結果が異なる。参照解答の固定量解釈では36ポンド減、通常の逐月複利的解釈では219/8=27.375ポンド減。

## weightloss_fixed_outcome：固定量として読む場合

条件：増量後192ポンドの1/8=24ポンドを毎月同じ量だけ3回失う。

根拠：

得られること：最終体重は120ポンドで、年初156ポンドより36ポンド軽い。

既習の根拠：参照解答の追加条件付き解釈。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.weightloss_fixed_outcome`。

## weightloss_compound_outcome：各月の体重に掛ける場合

条件：各月の開始時点の体重の1/8を失い、7/8を3回掛ける。

根拠：

得られること：各月後は168、147、1029/8ポンドで、年初との差は219/8=27.375ポンド。

既習の根拠：割合を逐次適用する通常解釈。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.weightloss_compound_outcome`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.weightloss_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
