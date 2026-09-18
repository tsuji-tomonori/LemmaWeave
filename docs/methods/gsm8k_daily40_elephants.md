# 象の流出入速度

4時間の流出後、7時間で増えた象の一定流入速度を求める。

**取得済み固定GSM8Kの1問。**

- 流出期間と流入期間は問題文の順に別区間として扱う。

## elephants_after：流出後

条件：3万頭から毎時2880頭が4時間流出する。

根拠：

得られること：流出後は30000−4×2880=18480頭。

既習の根拠：一定速度の変化量は速度×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.elephants_after`。

## elephants_entered：流入総数

条件：流出後18480頭から最終28980頭まで増える。

根拠：

得られること：流入したのは10500頭。

既習の根拠：後の量から前の量を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.elephants_entered`。

## elephants_rate：流入速度

条件：10500頭が7時間に一定速度で入る。

根拠：

得られること：流入速度は毎時1500頭。

既習の根拠：速度=量÷時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.elephants_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.elephants_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
