# 残金で買えるキーチェーン数

50ドルからTシャツ2枚とバッグ2個の代金を払い、残金で2ドル3個組のキーチェーンを何個買えるか求める。

**取得済み固定GSM8Kの1問。**

- キーチェーンは3個組を分割せず、残金14ドルをちょうど使って7組買う。

## souvenir_spend：衣類とバッグの代金

条件：8ドルのTシャツ2枚と10ドルのバッグ2個を買う。

根拠：

得られること：先に使う額は8×2+10×2=36ドル。

既習の根拠：各品目の単価×個数を合計する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.souvenir_spend`。

## souvenir_left：残金

条件：予算50ドルから36ドルを使った。

根拠：

得られること：残金は50−36=14ドル。

既習の根拠：予算から支出を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.souvenir_left`。

## souvenir_keychains：組数と個数

条件：残金14ドルで、キーチェーンは2ドルにつき3個。

根拠：

得られること：14÷2=7組、3×7=21個買える。

既習の根拠：組数は金額÷組価格、総個数は1組の個数×組数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.souvenir_keychains`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.souvenir_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
