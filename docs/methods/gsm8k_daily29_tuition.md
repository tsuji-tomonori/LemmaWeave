# 奨学金と収入を学費から差し引く

90ドルの学費に30%の奨学金と月15ドルの3か月収入を充てた残額を求める。

**取得済み固定GSM8Kの1問。**

- 3か月の収入を期限内に全額充当する。

## tuition_scholarship：奨学金額

条件：学費90ドルの30%。

根拠：

得られること：奨学金は27ドル。

既習の根拠：100×部分＝百分率×全体。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.tuition_scholarship`。

## tuition_after_scholarship：奨学金適用後

条件：90ドルから27ドルを差し引く。

根拠：

得られること：残り63ドル。

既習の根拠：全体＝充当額＋残額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.tuition_after_scholarship`。

## tuition_earnings：3か月の収入

条件：月15ドルを3か月得る。

根拠：

得られること：収入は45ドル。

既習の根拠：総収入＝月額×月数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.tuition_earnings`。

## tuition_remaining：最終残額

条件：63ドルへ45ドルを充当する。

根拠：

得られること：なお18ドル必要。

既習の根拠：必要額＝残学費−収入。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.tuition_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.tuition_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
