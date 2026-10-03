# 往復に追加するガソリン

400マイルに20ガロン使う車で600マイルを往復するとき、8ガロンから何ガロン追加するか求める。

**取得済み固定GSM8Kの1問。**

- 走行距離に比例して燃料を使う一定燃費を仮定する。

## gas_total_miles：往復距離

条件：片道600マイルを往復する。

根拠：

得られること：全行程は2×600=1200マイル。

既習の根拠：往復は片道の2倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.gas_total_miles`。

## gas_required：必要総量

条件：一定燃費20ガロン/400マイルを1200マイルへ比例適用する。

根拠：

得られること：1200は400の3倍なので60ガロン必要。

既習の根拠：比例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.gas_required`。

## gas_additional：追加量

条件：必要60ガロンのうち8ガロンは車内にある。

根拠：

得られること：答えは60−8=52ガロン。

既習の根拠：必要量と保有量の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.gas_additional`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.gas_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
