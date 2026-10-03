# 肩に乗ったときの到達高

身長5フィートで肩が身長より20%低いLarryの肩に、5フィートまで届くBarryが乗るときの到達高を求める。

**取得済み固定GSM8Kの1問。**

- 20%低い肩の高さを身長の80%とし、Barryの地上での到達高を加える。

## shoulder_percent：肩の高さの割合

条件：肩の高さは全身長より20%低い。

根拠：

得られること：肩の高さは身長の80%。

既習の根拠：全体100%から減少率20%を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.shoulder_percent`。

## shoulder_height：Larryの肩の高さ

条件：Larryは5フィートで、肩は身長の80%。

根拠：

得られること：肩の高さは4フィート。

既習の根拠：割合に対応する比例式100×肩高＝80×身長。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.shoulder_height`。

## shoulder_total：二人の到達高

条件：Barryが4フィートの肩上からさらに5フィート届く。

根拠：

得られること：到達高は9フィート。

既習の根拠：基準点の高さとそこからの到達距離の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.shoulder_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.shoulder_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
