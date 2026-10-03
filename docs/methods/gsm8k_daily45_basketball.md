# バスケットボールの得点差

Reggieの成功した各シュートの得点と、兄の3点シュート4本の得点を比較する。

**取得済み固定GSM8Kの1問。**

- 失敗した残りのシュートは0点なので、成功本数だけを合計する。

## basketball_reggie：Reggieの得点

条件：レイアップ3本は各1点、フリースロー2本は各2点、ロングショット1本は3点。

根拠：

得られること：Reggieの得点は3×1+2×2+1×3=10点。

既習の根拠：得点単価と成功本数の積を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.basketball_reggie`。

## basketball_loss：敗れた点差

条件：兄は3点のロングショットを4本成功させ、Reggieは10点。

根拠：

得られること：兄は12点なので、Reggieが敗れた差は12−10=2点。

既習の根拠：比較する二つの得点の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.basketball_loss`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.basketball_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
