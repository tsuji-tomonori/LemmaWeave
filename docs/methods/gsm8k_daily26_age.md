# Mattの10年後の年齢

Bushは今年12歳でMattより3歳年下である。Mattの10年後の年齢を求める。

**取得済み固定GSM8Kの1問。**

- 年齢差は時間が経っても3年のままとする。

## age_current：Mattの現在の年齢

条件：Bushは12歳で、Mattより3歳年下。

根拠：

得られること：Mattは現在15歳。

既習の根拠：年上の年齢＝年下の年齢＋年齢差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.age_current`。

## age_future：10年後

条件：現在15歳から10年経過する。

根拠：

得られること：Mattは25歳になる。

既習の根拠：将来の年齢＝現在の年齢＋経過年数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.age_future`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.age_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
