# Dallasの現在年齢

DexterとDarcyの現在年齢からDarcyとDallasの昨年年齢を経てDallasの現在年齢を求める。

**取得済み固定GSM8Kの1問。**

- 昨年の倍率には両者の昨年年齢を使う。

## dallas_darcy_now：Darcyの現在年齢

条件：Darcyは現在8歳のDexterの2倍。

根拠：

得られること：Darcyは現在16歳。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.dallas_darcy_now`。

## dallas_darcy_last：Darcyの昨年年齢

条件：現在16歳から1年戻す。

根拠：

得られること：Darcyは昨年15歳。

既習の根拠：年齢の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.dallas_darcy_last`。

## dallas_last：Dallasの昨年年齢

条件：昨年Dallasは昨年Darcyの3倍。

根拠：

得られること：Dallasは昨年45歳。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.dallas_last`。

## dallas_now：Dallasの現在年齢

条件：昨年45歳から1年経過。

根拠：

得られること：現在46歳。

既習の根拠：年齢の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.dallas_now`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.dallas_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
