# 総額から同額のトップス1着分を逆算する

75ドルで短パン5組を各7ドル、靴2組を各10ドル、同額のトップス4着を購入。1着はいくらか。

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- For $75は購入総額75ドルと読む。税・割引・追加商品は原題にない。
- トップス4着がすべて同価格なので合計を4等分する。

## tops_shorts：短パン代

条件：5組×7ドル。

根拠：

得られること：35ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.tops_shorts`。

## tops_shoes：靴代

条件：2組×10ドル。

根拠：

得られること：20ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.tops_shoes`。

## tops_total：トップス合計

条件：全体75から短パン35と靴20を除く。

根拠：

得られること：20ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.tops_total`。

## tops_each：1着の価格

条件：4着は同額で合計20ドル、4≠0。

根拠：

得られること：1着5ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.tops_each`。

## tops_exists：条件の充足

条件：短パン35、靴20、トップス合計20、1着5。

根拠：

得られること：4着分と全購入額75が一致する。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.tops_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.tops_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
