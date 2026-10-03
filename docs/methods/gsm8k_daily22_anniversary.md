# 2周年から現在まで

6か月後が4周年である2人について、2周年が何か月前か求める。

**取得済み固定GSM8Kの1問。**

- 1年を12か月として同じ時間軸上の周年を月数に直す。

## anniversary_current：現在時点

条件：4周年は開始から4×12=48か月で、それが6か月後である。

根拠：

得られること：現在は開始から48−6=42か月。

既習の根拠：年から月への換算と差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.anniversary_current`。

## anniversary_second：2周年時点

条件：2周年は開始から2年後である。

根拠：

得られること：2周年は開始から2×12=24か月。

既習の根拠：年から月への換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.anniversary_second`。

## anniversary_ago：経過月数

条件：現在42か月と2周年24か月は同じ起点から測っている。

根拠：

得られること：2周年は42−24=18か月前。

既習の根拠：同一起点の時点の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.anniversary_ago`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.anniversary_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
