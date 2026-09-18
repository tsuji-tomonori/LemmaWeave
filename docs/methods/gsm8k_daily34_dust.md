# 掃除後の残存割合から元の埃を求める

歩行後331個のうち靴が追加した223個を除き、掃除後が元の10分の1であることから元の個数を求める。

**取得済み固定GSM8Kの1問。**

- 9割除去後の1割と、靴が後から追加した223個を分離する。

## dust_after_sweep：歩く前の残存数を求める

条件：歩行後331個には靴が追加した223個が含まれる。

根拠：

得られること：掃除直後は108個。

既習の根拠：331−223を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.dust_after_sweep`。

## dust_original：掃除前の個数を求める

条件：9割除去したので108個は元の10分の1。

根拠：

得られること：掃除前は1080個。

既習の根拠：108×10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.dust_original`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.dust_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
