# 残り道路の舗装に必要なピッチ量を求める

2日間の舗装後に残る距離から、砂利とピッチの比を使って必要樽数を求める。

**取得済み固定GSM8Kの1問。**

- 1台当たり2袋の砂利と、砂利袋数:ピッチ樽数=5:1を有理数量として扱う。

## roadwork_second：2日目の距離を求める

条件：2日目は1日目4マイルの2倍より1マイル少ない。

根拠：

得られること：2日目は7マイル。

既習の根拠：2×4-1を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.roadwork_second`。

## roadwork_remaining：残り距離を求める

条件：全16マイルから1日目4マイルと2日目7マイルを除く。

根拠：

得られること：残りは5マイル。

既習の根拠：16=4+7+5を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.roadwork_remaining`。

## roadwork_loads：必要なトラック台数を求める

条件：1マイルにつき3台分、残り5マイル。

根拠：

得られること：15台分必要。

既習の根拠：3×5を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.roadwork_loads`。

## roadwork_gravel：砂利袋数を求める

条件：1台分につき砂利2袋、15台分。

根拠：

得られること：砂利は30袋。

既習の根拠：15×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.roadwork_gravel`。

## roadwork_pitch：ピッチ樽数を求める

条件：砂利袋数はピッチ樽数の5倍。

根拠：

得られること：ピッチは6樽。

既習の根拠：30=5×6という比の式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.roadwork_pitch`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.roadwork_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
