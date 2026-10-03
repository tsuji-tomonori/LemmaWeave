# ウィジェット組立速度の解釈差

Sam、Jack、Tonyの作業量からTonyの1個当たり時間を求める。they put togetherの意味を分ける。

**取得済み固定GSM8Kの1問。**

- 参考解答はJack単独を15分/個と扱うが、原文のthey put togetherはSamとJackの合算速度とも読める。

## widgets_reference：参考解答の帰属

条件：Samを10分/個、Jackを15分/個と別々に数える。Samは36個、Jackは16個。

根拠：

得られること：Tonyは16個を480分で作り、30分/個。

既習の根拠：各人の生産数を総数68から差し引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.widgets_reference`。

## widgets_combined：合算速度の読み

条件：最初の4時間はSamとJackが合わせて15分に2個、その後Samが2時間単独で作る。

根拠：

得られること：2人分は32+12=44個、Tonyは24個なので20分/個。

既習の根拠：重複計上を避け、時間区間ごとの合算生産数を足す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.widgets_combined`。

## widgets_ambiguity：非一意性

条件：二つの作業量モデルが文言の異なる読みを表し、30と20は異なる。

根拠：

得られること：参考解答は30分だが、原文だけでは20分という読みも排除できない。

既習の根拠：異なる具体的モデルを示して追加条件の必要性を示す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.widgets_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.widgets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
