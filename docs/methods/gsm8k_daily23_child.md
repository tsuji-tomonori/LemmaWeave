# 第4子の年齢

第1子誕生から各出産までの間隔を合計し、第4子の現在年齢を求める。

**取得済み固定GSM8Kの1問。**

- 同じbirthdayは月日が同じという補足で、年単位の間隔1+4+2を使う。

## child_total_gap：第1子から第4子まで

条件：第2子は1年後、第3子はさらに4年後、第4子はさらに2年後。

根拠：

得られること：第4子は第1子の7年後に生まれた。

既習の根拠：時間間隔の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.child_total_gap`。

## child_fourth_age：現在年齢

条件：第1子は現在15歳で、第4子は7年後生まれ。

根拠：

得られること：第4子は15−7=8歳。

既習の根拠：同一現在時点の年齢差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.child_fourth_age`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.child_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
